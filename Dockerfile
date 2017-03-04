FROM ubuntu:14.04
MAINTAINER docker "owenchen@tw.ibm.com"
RUN apt-get update && apt-get install -y nginx
CMD ["nginx","-g","daemon off;"]
HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost/ || exit 1
