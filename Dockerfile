FROM node:alpine

LABEL maintainer="whatwedo GmbH <welove@whatwedo.ch>" \
    org.label-schema.name="whatwedo/commitlint" \
    org.label-schema.url="https://github.com/whatwedo/docker-commitlint" \
    org.label-schema.vcs-url="https://github.com/whatwedo/docker-commitlint" \
    org.label-schema.vendor="whatwedo GmbH"

RUN npm install --global --save-dev @commitlint/config-conventional @commitlint/cli
RUN echo "module.exports = {extends: ['@commitlint/config-conventional']}" > commitlint.config.js

ENTRYPOINT ["commitlint"]
