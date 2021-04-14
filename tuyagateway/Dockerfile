ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache \
    git

COPY package.json /
COPY bridgeconfig.json /
COPY HomeAssistantWSBridge /
COPY HomeAssistantWSBridge.pdb /
COPY SMG.TuyaApi.pdb /
COPY HassApi.pdb /

COPY run.sh /
RUN chmod a+x /run.sh
RUN chmod a+x /HomeAssistantWSBridge

CMD [ "/run.sh" ]