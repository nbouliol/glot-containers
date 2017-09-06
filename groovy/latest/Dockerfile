FROM webratio/groovy:latest


RUN rm /root/.gvm/groovy/current
RUN mv /root/.gvm /home/glot/
RUN ln -s /home/glot/.gvm/groovy/2.* /home/glot/.gvm/groovy/current
RUN chown glot:glot -R /home/glot/.gvm/groovy/current
ENV GROOVY_HOME /home/glot/.gvm/groovy/current
ENV PATH $GROOVY_HOME/bin:$PATH


RUN apt-get update && apt-get install git build-essential -y
ENV GIT_SSH_COMMAND='ssh -i /key'
ADD ../../key /key
