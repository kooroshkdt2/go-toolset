FROM registry.redhat.io/rhel9/go-toolset:1.20.12-3.1712567214
USER root
ENV TZ=UTC
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
RUN echo  'wget -O .env http://$DP_PROVIDER/$DEPLOYMENT_NAME' >> /usr/libexec/s2i/assemble  &&\ 
    echo  '$EXTRA_COMMAND_TO_RUN1' >> /usr/libexec/s2i/assemble  &&\  
    echo  '$EXTRA_COMMAND_TO_RUN2' >> /usr/libexec/s2i/assemble  &&\  
    echo  '$EXTRA_COMMAND_TO_RUN3' >> /usr/libexec/s2i/assemble  &&\
    echo  '$EXTRA_COMMAND_TO_RUN4' >> /usr/libexec/s2i/assemble  &&\  
    echo  '$EXTRA_COMMAND_TO_RUN5' >> /usr/libexec/s2i/assemble  &&\  
    echo  '$EXTRA_COMMAND_TO_RUN6' >> /usr/libexec/s2i/assemble  &&\  
    echo  '$EXTRA_COMMAND_TO_RUN7' >> /usr/libexec/s2i/assemble  &&\  
    echo  '$EXTRA_COMMAND_TO_RUN8' >> /usr/libexec/s2i/assemble  &&\ 
    chmod +x /usr/libexec/s2i/ -R    && \
    chown 1001:0 -R /usr/libexec/s2i/ -R  && \
    chmod 777 /usr/libexec/s2i/ -R   && \
    chmod +x /opt/ -R    && \
    chown 1001:0 -R /opt/ -R  && \
    chmod 777 /opt/ -R  && \
USER 1001
