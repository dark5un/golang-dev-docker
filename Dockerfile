FROM archlinux/base

ENV GOLANG_VERSION 1.10

RUN pacman -Syuw --noconfirm && \
	pacman -S --noconfirm \
	go \
	git \
	tmux \
	neovim

ENV GOPATH /root/go
ENV PATH $GOPATH/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

