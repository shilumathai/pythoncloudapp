import ibm_db

conn_str = "HOSTNAME=21fecfd8-47b7-4937-840d-d791d0218660.bs2io90l08kqb1od8lcg.databases.appdomain.cloud;DATABASE=BLUDB;Security=SSL;PORT=31864;UID=qwf74316;PWD=8qMViBjOkj4tgucP"

connection = ibm_db.connect(conn_str,"","")

print("\n Connection string used: " + conn_str) 

if (connection):
        print ("\n python ibm_db connection in docker container : SUCCESS\n\r")
else:
        print ("\n python ibm_db connection in docker container : FAILURE\n\r")


