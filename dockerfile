FROM openjdk:8
RUN wget "https://download2.interactivebrokers.com/portal/clientportal.gw.zip"
RUN unzip clientportal.gw.zip -d portal
WORKDIR portal
RUN echo "      allow:" >> root/conf.yaml
RUN echo "        - 172.*" >> root/conf.yaml
ENTRYPOINT ["bin/run.sh", "root/conf.yaml"]