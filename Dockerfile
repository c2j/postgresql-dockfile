FROM opensuse
MAINTAINER c2j
RUN mkdir /src; cd /src; git clone https://github.com/c2j/postgres.git; cd postgres; git checkout REL9_4_STABLE
RUN cd /src/postgres; ./configure; make; make install
