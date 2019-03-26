FROM akosinsky/requirements-mono-build

RUN  ; \
wget https://download.mono-project.com/sources/mono/mono-4.6.2.16.tar.bz2 ; \
tar xfj mono-4.6.2.16.tar.bz2 ; \
cd /mono-4.6.2 ; \
source ../mono-dev-env ; \
./configure ; \
make get-monolite-latest ; \
make ; \
make install
