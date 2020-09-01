#change name to Dockerfile and then use it
FROM centos
RUN yum install java-1.8.0-openjdk -y
RUN yum install openssh-server -y
RUN yum install sudo -y
RUN echo "root:root" | chpasswd
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl


RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
RUN mkdir /root/.kube
#COPY /root/kube/  /root/.kube
COPY config  /root/.kube

COPY client.key /root/.kube
COPY client.crt /root/.kube
COPY ca.crt /root/.kube
#COPY myinfo /root/.kube
RUN mkdir /root/yml
COPY deployment.yml /root/yml
RUN ssh-keygen -A
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
