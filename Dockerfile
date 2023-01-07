FROM ubuntu

RUN apt-get update && apt-get install -y build-essential

ENV USERNAME=user
ENV HOME=/home/$USERNAME
RUN useradd --create-home --shell /bin/bash $USERNAME
USER $USERNAME
WORKDIR $HOME
ADD --chown=user:user . .

RUN make hello
RUN ./hello
