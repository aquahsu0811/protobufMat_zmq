#include <iostream>
#include <chrono>
#include <thread>
#include <opencv2/opencv.hpp>
#include <msg.pb.h>

#include <zmq.hpp>

zmq::context_t m_context;
zmq::socket_t m_socket;

void send2()
{
    zmq::context_t m_context(1);
    zmq::socket_t m_socket (m_context, zmq::socket_type::rep);
    try{
        m_socket.bind("tcp://localhost:"+std::to_string(5001));
    }
    catch(zmq::error_t& e)
    {
        //spdlog::error(e.what());
        std::cout<<"error:"<<e.what()<<std::endl;
    }
    std::string data = "world";
    while(1){
        zmq::message_t payload(data.size());

        //memcpy(topicName.data(), m_topic.data(), m_topic.size());
        memcpy((void *)payload.data(), data.c_str(), data.size());

        try{
            m_socket.send(zmq::str_buffer("Hello, world"), zmq::send_flags::dontwait);
        }
        catch(zmq::error_t& e)
        {
            //spdlog::error(e.what());
            std::cout<<"error"<<e.what()<<std::endl;
        }
    }
}

void send()
{
    void *context = zmq_ctx_new ();
    void *responder = zmq_socket (context, ZMQ_REP);
    int rc = zmq_bind (responder, "tcp://*:5000");
    assert (rc == 0);

    while (1) {
        char buffer [10];
        zmq_recv (responder, buffer, 10, 0);
        printf ("Received Hello\n");
       //  Do some 'work'
        zmq_send (responder, "World", 5, 0);
    }
}

void connect(int port)
{
    m_context = zmq::context_t(1);
    //m_socket = zmq::socket_t(m_context, zmq::socket_type::pub);
    m_socket = zmq::socket_t(m_context, zmq::socket_type::req);

    m_socket.connect("tcp://localhost:"+std::to_string(port));
    if (!m_socket.connected())
    {
        //spdlog::error("Unable to start server");
        std::cout<<"Unable to start server"<<std::endl;
        std::runtime_error("Unable to start server");
    }
    std::cout<<"connect"<<std::endl;
}

void publishFrame(const std::string &data)
{
    std::cout<<"publishFrame"<<std::endl;
    zmq::message_t payload(data.size());

    memcpy((void *)payload.data(), data.c_str(), data.size());

    try{
        auto rc = m_socket.send(payload, zmq::send_flags::none);
    }
    catch(zmq::error_t& e)
    {
        //spdlog::error(e.what());
        std::cout<<"error"<<e.what()<<std::endl;
    }


    zmq::message_t z_in;
    m_socket.recv(z_in);
    //std::cout<< "receive:"<<z_in.to_string();
}

void produceForBroadcast()
{

    std::cout<<"produceForBroadcast"<<std::endl;
    cv::VideoCapture cap("/home/ubuntu/Videos/720.mp4");
    if (!cap.isOpened())
    {
        //spdlog::error("Unable to open capture device");
        std::cout<<"unable to open capture device"<<std::endl;
        return;
    }
    cv::Mat frame;

    cv::namedWindow("video feed", cv::WINDOW_AUTOSIZE);
    while(cap.get(cv::CAP_PROP_POS_FRAMES) != cap.get(cv::CAP_PROP_FRAME_COUNT)-1)
    {
        cap.read(frame);
        std::cout<<"packer"<<std::endl;
        //std::string frameStr = packer.packFrameToJson(frame, errCode);
        RL::OcvMat serializableMat;
        serializableMat.set_rows(frame.rows);
        serializableMat.set_cols(frame.cols);
        serializableMat.set_channels(frame.channels());
        serializableMat.set_elt_type(frame.type());
        serializableMat.set_elt_size((int)frame.elemSize());
        size_t dataSize  = frame.rows * frame.cols * frame.elemSize();
        serializableMat.set_mat_data(frame.data, dataSize);

        std::string encoded_msg;
        serializableMat.SerializeToString(&encoded_msg);

        publishFrame(encoded_msg);
        

    }
    cv::destroyAllWindows();

    return;
}

int main()
{
    //send2();
    //produceForBroadcast();
    connect(5000);
    produceForBroadcast();

    return 0;
}