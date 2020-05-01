#Ansible deployment

##CouchDB
currently 3 nodes, will increase to 4
###Docker image
`ibmcom/couchdb3.3.0.0`

### Master node 
`http://172.26.133.11:5986/`

###Variables
```
couch_db_dir= couch_db
couch_db_data_dir= /data/couch_db
database_user= admin
database_password= 1111
couchdb_cookie= a192aeb9904e6590849337933b001159
```

