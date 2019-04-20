FROM jenkinsci/jnlp-slave
LABEL maintainer "Muthukumar Selvarasu <muthukumar.se@gmail.com>"

# to install below dependencies
USER root

# Mandatory dependencies for Puppeteer
# Refer - https://github.com/GoogleChrome/puppeteer/blob/master/docs/troubleshooting.md
RUN apt-get update \
    && apt-get install -y apt-utils \
    && apt-get install -y build-essential \
    && apt-get install -y gconf-service \
    && apt-get install -y libasound2 \
    && apt-get install -y libatk1.0-0 \
    && apt-get install -y libatk-bridge2.0-0 \
    && apt-get install -y libc6 \
    && apt-get install -y libcairo2 \
    && apt-get install -y libcups2 \
    && apt-get install -y libdbus-1-3 \
    && apt-get install -y libexpat1 \
    && apt-get install -y libfontconfig1 \
    && apt-get install -y libgcc1 \
    && apt-get install -y libgconf-2-4 \
    && apt-get install -y libgdk-pixbuf2.0-0 \
    && apt-get install -y libglib2.0-0 \
    && apt-get install -y libgtk-3-0 \
    && apt-get install -y libnspr4 \
    && apt-get install -y libpango-1.0-0 \
    && apt-get install -y libpangocairo-1.0-0 \
    && apt-get install -y libstdc++6 \
    && apt-get install -y libx11-6 \
    && apt-get install -y libx11-xcb1 \
    && apt-get install -y libxcb1 \
    && apt-get install -y libxcomposite1 \
    && apt-get install -y libxcursor1 \
    && apt-get install -y libxdamage1 \
    && apt-get install -y libxext6 \
    && apt-get install -y libxfixes3 \
    && apt-get install -y libxi6 \
    && apt-get install -y libxrandr2 \
    && apt-get install -y libxrender1 \
    && apt-get install -y libxss1 \
    && apt-get install -y libxtst6 \
    && apt-get install -y ca-certificates \
    && apt-get install -y fonts-liberation \
    && apt-get install -y libappindicator1 \
    && apt-get install -y libnss3 \
    && apt-get install -y lsb-release \
    && apt-get install -y xdg-utils \
    && apt-get install -y wget

# Install NodeJS, Yarn
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g yarn

# Copy puppeteer Runtime
RUN mkdir -p /puppeteer

COPY ./puppeteer/firefox-linux-2f959d575a3d61f5dda12e4e2dca1f46a92ab569.tar.gz /puppeteer
RUN tar -xvzf /puppeteer/firefox-linux-2f959d575a3d61f5dda12e4e2dca1f46a92ab569.tar.gz -C /puppeteer/
RUN rm /puppeteer/firefox-linux-2f959d575a3d61f5dda12e4e2dca1f46a92ab569.tar.gz

COPY ./puppeteer/linux-637110.tar.gz /puppeteer
RUN tar -xvzf /puppeteer/linux-637110.tar.gz -C /puppeteer/
RUN rm /puppeteer/linux-637110.tar.gz

COPY ./puppeteer/prepare.sh /puppeteer
COPY ./puppeteer/runTest.sh /puppeteer

# environment variable to skip CHROMIUM DOWNLOAD on `yarn install --offline --force`
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

# set work directory 
RUN mkdir -p /app
WORKDIR /app