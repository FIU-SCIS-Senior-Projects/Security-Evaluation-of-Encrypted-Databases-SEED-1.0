# created by Joannier Pinales
export EDBDIR=/opt/cryptdb
export CRYPTDB_PROXY_DEBUG=tru
export LD_LIBRARY_PATH=$EDBDIR/obj/

chown -R $USER $EDBDIR


exec $EDBDIR/bins/proxy-bin/bin/mysql-proxy \
                 --plugins=proxy --event-threads=4 \
                 --max-open-files=1024 \
                 --proxy-lua-script=$EDBDIR/mysqlproxy/wrapper.lua \
                 --proxy-address=127.0.0.1:3307 \
                 --proxy-backend-addresses=127.0.0.1:3306