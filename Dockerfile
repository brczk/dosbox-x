FROM fedora:latest
RUN dnf update -y
RUN dnf install -y dnf-plugins-core
RUN echo "y" | dnf copr enable rob72/DOSBox-X 
RUN dnf install -y nodejs dosbox-x zip git rsync
CMD bash