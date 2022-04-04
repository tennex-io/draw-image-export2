FROM node:16-alpine

WORKDIR /draw-image-export2

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN apk add --no-cache chromium

COPY ./ /draw-image-export2

RUN npm ci

EXPOSE 8000

ENTRYPOINT [ "node", "export.js" ]
