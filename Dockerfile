FROM jetbrains/teamcity-agent:10.0.4

ENV DOCKER_IN_DOCKER start

RUN apt-get install -y make g++
RUN curl -sSL https://get.docker.com/ | bash && rm -rf /var/lib/docker
RUN curl -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && unzip awscli-bundle.zip && ./awscli-bundle/install -b /bin/aws
