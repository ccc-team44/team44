#Ansible deployment

##Web app
[React web app](http://172.26.130.31)

##Django backend server
[django](http://172.26.130.31:8001)

##CouchDB
4 nodes
###Docker image
`ibmcom/couchdb3.3.0.0`

### Master node 
`http://172.26.130.31:5984/`

###Variables
```
couch_db_dir= couch_db
couch_db_data_dir= /data/couch_db
database_user= admin
database_password= 1111
couchdb_cookie= a192aeb9904e6590849337933b001159
```

