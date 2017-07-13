FROM jetbrains/upsource:@VERSION@

USER root

RUN apt-get update && apt-get install apt-transport-https && \
    apt-get install -y python-pip && \
    apt-get install -y python3 && apt-get install -y python3-pip && \
    apt-get install -y libapache2-mod-php php && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install yarn && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install nodejs

USER jetbrains
