FROM centos:7

# Updating image
RUN yum update -y

# Installing dependencies
# Add End Point CentOS 7 repository
RUN yum -y install https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm
## Installing git
RUN yum install -y git

## Installing Chrome
RUN yum install -y wget
RUN wget --no-verbose -O /tmp/google-chrome-stable_current_x86_64.rpm https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
RUN yum install -y /tmp/google-chrome-stable_current_x86_64.rpm
RUN rm -rf /tmp/google-chrome-stable_current_x86_64.rpm

## Installing Node 16
RUN curl -sL https://rpm.nodesource.com/setup_16.x | bash -
RUN yum install -y nodejs

## Installing cypress dependencies
RUN yum install -y xorg-x11-server-Xvfb gtk2-devel gtk3-devel libnotify-devel GConf2 nss libXScrnSaver alsa-lib

# Configuring environment variables
ENV TERM xterm
ENV npm_config_loglevel warn
ENV npm_config_unsafe_perm true

ENV DISPLAY :99
ENV ELECTRON_RUN_AS_NODE 1