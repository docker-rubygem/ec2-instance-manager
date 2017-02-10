FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.0

RUN gem install ec2-instance-manager --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ec2-instance-manager"]
CMD ["--help"]
