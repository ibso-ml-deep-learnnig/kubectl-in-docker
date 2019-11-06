FROM alpine

LABEL maintainer="Eric Wu"

ARG BUILD_DATE

# Metadata
LABEL org.label-schema.name="kubectl-in-docker" \
      org.label-schema.vcs-url="https://github.com/ibso-ml-deep-learnnig/kubectl-in-docker" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile"

# The stable kubectl can be found:
# https://storage.googleapis.com/kubernetes-release/release/stable.txt
ENV KUBE_STABLE_VERSION="v1.16.2"

RUN apk add --update ca-certificates \
 && apk add --update -t deps curl \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_STABLE_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl \
 && apk del --purge deps \
 && rm /var/cache/apk/*

WORKDIR /root
ENTRYPOINT ["kubectl"]
CMD ["help"]
