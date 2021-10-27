FROM opensuse/tumbleweed:latest
LABEL MAINTAINER="Andrea Cervesato <andrea.cervesato@suse.com>"

RUN zypper refs && zypper refresh && \
    zypper --non-interactive install -y openQA-client && \
    zypper clean --all
