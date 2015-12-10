FROM opensuse
MAINTAINER c2j
RUN zypper --non-interactive install git-core cmake gcc bison flex readline-devel
RUN mkdir /src; cd /src; env GIT_SSL_NO_VERIFY=true git clone https://github.com/c2j/postgres.git; cd postgres; git checkout REL9_4_STABLE
RUN cd /src/postgres; ./configure; make; make install
