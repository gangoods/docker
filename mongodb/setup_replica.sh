#!/bin/bash 
port=27017
x=`cat <<EOF
   var cfg = {
        "_id": "rs0",
        "protocolVersion": 1,
        "members": [
            {
                "_id": 0,
                "host": "mongo1:${port}"
            },
            {
                "_id": 1,
                "host": "mongo2:${port}"
            },
            {
                "_id": 2,
                "host": "mongo3:${port}"
            }
        ]
    };
    rs.initiate(cfg, { force: true });
    rs.reconfig(cfg, { force: true });
EOF
`

docker exec -it mongo1 bash -c "echo '$x'|mongo"


