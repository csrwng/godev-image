FROM vim

ENV PATH=$PATH:/usr/local/go/bin:/data/go/bin \
    GOPATH=/data/go 
ENV GO_BINARY=go1.7.4.linux-amd64.tar.gz
RUN curl -O https://storage.googleapis.com/golang/${GO_BINARY}
RUN tar -C /usr/local -xzf ${GO_BINARY} && rm ${GO_BINARY}
RUN  /bin/bash -c "vim +GoInstallBinaries +quitall &> /dev/null || echo Done"
