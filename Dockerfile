FROM ubuntu:trusty
MAINTAINER Will Fong <will@digitaldev.com>

#RUN groupadd -r pyrunner && useradd -r -g pyrunner pyrunner

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y python-setuptools && easy_install pip

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5000

# Example:
# docker run --restart=always -v /apps/database/<nameofapp>.sql3:/db.sql3 -v /apps/<nameofapp>/src:/app --env SERVERLEVEL=<env> -p :<port>:5000 --name <nameofapp> -d pythonapps

#USER pyrunner

CMD ["python", "/app/main.py"]

