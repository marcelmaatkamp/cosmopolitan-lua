FROM marcelmaatkamp/cosmopolitan:1.0 as cosmopolitan
WORKDIR /application
ENV COSMOPOLITAN=/build/cosmopolitan/
RUN \
 git clone --branch cosmopolitan https://github.com/ahgamut/lua &&\ 
 cd lua &&\
 cp \
  ${COSMOPOLITAN}/o/cosmopolitan.h \
  ${COSMOPOLITAN}/o/libc/crt/crt.o \
  ${COSMOPOLITAN}/o/ape/ape.o \
  ${COSMOPOLITAN}/o/ape/ape.lds \
  ${COSMOPOLITAN}/o/cosmopolitan.a \
  libcosmo/ &&\
 make

FROM alpine
COPY \
 --from=cosmopolitan \
 /application/lua/lua.exe \
 /usr/local/bin
ENTRYPOINT ["/bin/sh"]
CMD ["/usr/local/bin/lua.exe"]
