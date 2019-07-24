FROM daltonjorge/sdkman

MAINTAINER Dalton Jorge <daltonjorge@gmail.com>

ENV GRAILS_VERSION 3.1.9
ENV GRADLE_VERSION 3.4.1

SHELL ["/bin/bash","-c"]

RUN set -x && \
    source $SDKMAN_DIR/bin/sdkman-init.sh && \
    sdk install grails $GRAILS_VERSION && \
    sdk install gradle $GRADLE_VERSION

VOLUME ["/root/.gradle", "/root/.m2", "/data"]

CMD ["bash"]
