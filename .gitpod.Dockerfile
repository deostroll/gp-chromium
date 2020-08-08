FROM ubuntu

RUN apt-get update && apt-get install -y git \  
  && git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git /opt/chr/depot_tools

# RUN lsb_release -a && sleep 30
ENV PATH="/opt/chr/depot_tools:${PATH}"

