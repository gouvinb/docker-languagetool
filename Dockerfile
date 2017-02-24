FROM debian:sid

MAINTAINER gouvinb

LABEL "com.gouvinb.docker-languagetool"="gouvinb" \
      version="1.0" \
      description="A Docker image for languagetool, command Line and server Interface for languagetool."

ENV VERSION 3.6
ADD https://www.languagetool.org/download/LanguageTool-$VERSION.zip /LanguageTool-$VERSION.zip

RUN apt update
RUN apt install -y openjdk-8-jre
RUN apt install -y unzip
RUN apt clean
RUN unzip LanguageTool-$VERSION.zip
RUN rm LanguageTool-$VERSION.zip

COPY entrypoint.sh /LanguageTool-$VERSION/entrypoint.sh
RUN chmod +x /LanguageTool-$VERSION/entrypoint.sh

ENV PORT 8888

WORKDIR /LanguageTool-$VERSION

ENTRYPOINT ["./entrypoint.sh"]