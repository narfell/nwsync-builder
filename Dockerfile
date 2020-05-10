FROM nimlang/nim:alpine

RUN apk --no-cache add curl unzip pcre \
  && curl -LJO https://github.com/Beamdog/nwsync/archive/0.2.6.zip \
  && unzip nwsync-0.2.6.zip \
  && rm nwsync-0.2.6.zip \
  && cd nwsync-0.2.6 \
  && nimble install -y \
  && cd -

ENV PATH="/nwsync-0.2.6/bin:${PATH}"
