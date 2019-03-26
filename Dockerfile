FROM akosinsky/requirements-mono-build

RUN wget https://download.mono-project.com/sources/mono/mono-4.6.2.7.tar.bz2 ; \
tar xfj mono-4.6.2.7.tar.bz2 ; \
cd /mono-4.6.2 ; \
./configure ; \
make get-monolite-latest ; \
make ; \
make install ; \
apt -y install pkg-config cifs-utils mate-terminal; \
wget https://github.com/mono/xsp/archive/4.6.tar.gz ; \
tar xfz 4.6.tar.gz ; \
cd xsp-4.6 ; \
./autogen.sh ; \
./configure ; \
make ; \
make install
