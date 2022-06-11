
FROM python:3.10-slim
ARG usesource="https://github.com/TechXueXi/TechXueXi.git"
ARG usebranche="dev"
ENV pullbranche=${usebranche}
ENV Sourcepath=${usesource}
RUN apt-get update
RUN apt-get install -y wget unzip libzbar0 git cron supervisor chromium-driver; chromedriver --version; which chromedriver; chromium --version
RUN apt-get install -y libxml2-dev libxslt1-dev zlib1g-dev python3-pip
RUN apt-get install libjpeg-dev zlib1g-dev 
ENV TZ=Asia/Shanghai
ENV AccessToken=
ENV Secret=
ENV Nohead=True
ENV Pushmode=1
ENV islooplogin=False
ENV CRONTIME="30 9 * * *"
# RUN rm -f /xuexi/config/*; ls -la
COPY requirements.txt /xuexi/requirements.txt
COPY run.sh /xuexi/run.sh 
COPY start.sh /xuexi/start.sh 
COPY supervisor.sh /xuexi/supervisor.sh

RUN pip install -r /xuexi/requirements.txt

WORKDIR /xuexi
RUN chmod +x ./supervisor.sh;./supervisor.sh
RUN chmod +x ./start.sh
RUN chmod +x ./run.sh

RUN mkdir code
WORKDIR /xuexi/code
RUN git clone -b ${usebranche} ${usesource}; cp -r /xuexi/code/TechXueXi/SourcePackages/* /xuexi;
WORKDIR /xuexi
EXPOSE 80
ENTRYPOINT ["/bin/bash", "./start.sh"]
