dump -file myfsdb.fsdb -type FSDB
dump -deltaCycle on
dump -add / -aggregates -fid FSDB0 -fsdb_opt +mba+packedmda+struct
run
quit
