FROM node:16

ARG user
ARG uid=1000

RUN groupmod -g 1001 node && usermod -u 1001 -g 1001 node
RUN useradd -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.npm && \
	mkdir -p /home/$user/.npm-global/bin && \
	chown -R $user:$user /home/$user

ENV NPM_CONFIG_PREFIX=/home/$user/.npm-global
ENV PATH=$PATH:/home/$user/.npm-global/bin
ENV HOST=0

USER $user