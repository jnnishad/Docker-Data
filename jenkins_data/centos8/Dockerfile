FROM centos
RUN yum -y install openssh-server
RUN useradd test_jai && \
    echo "test_jai:12345"| chpasswd && \
    mkdir -p /home/test_jai/.ssh && \
    chmod 700 /home/test_jai/.ssh

COPY nodes.pub /home/test_jai/.ssh/authorized_keys
RUN chown test_jai:test_jai -R /home/test_jai/.ssh/ && \
    chmod 600 /home/test_jai/.ssh/authorized_keys

RUN ssh-keygen -A
CMD /usr/sbin/sshd -D
