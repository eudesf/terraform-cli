FROM amazonlinux:2

RUN set -ex; \
        yum install -y yum-utils shadow-utils; \
        yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo; \
        yum -y install terraform

RUN set -ex; \
        yum install -y unzip; \
        curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"; \
        unzip awscliv2.zip; \
        ./aws/install

RUN mkdir /app
WORKDIR /app
CMD ["/bin/bash"]
