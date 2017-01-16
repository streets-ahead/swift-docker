

FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y build-essential 

RUN apt-get install -y libedit-dev python python-dev && \
    apt-get install -y libxml2-dev wget

RUN wget -O /root/swift.tar.gz https://swift.org/builds/swift-3.0.2-release/ubuntu1604/swift-3.0.2-RELEASE/swift-3.0.2-RELEASE-ubuntu16.04.tar.gz  && \
    cd /root && tar xzvf swift.tar.gz && \
    mv swift-3.0.2-RELEASE-ubuntu16.04 swift

RUN rm -rf /var/lib/apt/lists/*

ENV PATH=${PATH}:/root/swift/usr/bin

CMD ["bash"]

