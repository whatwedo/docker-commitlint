FROM node:alpine

LABEL maintainer="whatwedo GmbH <welove@whatwedo.ch>" \
    org.label-schema.name="whatwedo/commitlint" \
    org.label-schema.url="https://github.com/whatwedo/docker-commitlint" \
    org.label-schema.vcs-url="https://github.com/whatwedo/docker-commitlint" \
    org.label-schema.vendor="whatwedo GmbH"

RUN npm install --global @commitlint/config-conventional @commitlint/cli

ENTRYPOINT ["commitlint", "-x", "@commitlint/config-conventional"]
