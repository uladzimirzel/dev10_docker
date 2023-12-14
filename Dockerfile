FROM mattes/hello-world-nginx
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/umairnow/LocalizableGenerator.git
VOLUME LocalizableGenerator