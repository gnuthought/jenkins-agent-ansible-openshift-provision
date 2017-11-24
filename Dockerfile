FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7
MAINTAINER https://github.com/gnuthought/jenkins-agent-ansible-openshift-provision
RUN yum -y \
    --disablerepo=* \
    --enablerepo=rhel-7-server-rpms \
    --enablerepo=rhel-7-server-extras-rpms \
    --enablerepo=rhel-server-rhscl-7-rpms \
    install ansible atomic-openshift-clients nss_wrapper python2-jmespath && \
    yum clean all
RUN git clone https://github.com/gnuthought/ansible-role-openshift-provision.git /etc/ansible/roles/openshift-provision
