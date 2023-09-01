var ibmdb = require("ibm_db")
  , connStr = "DATABASE=BLUDB;HOSTNAME=21fecfd8-47b7-4937-840d-d791d0218660.bs2io90l08kqb1od8lcg.databases.appdomain.cloud;Security=SSL;PORT=31864;PROTOCOL=TCPIP;UID=qwf74316;PWD=8qMViBjOkj4tgucP";

ibmdb.open(connStr, function (err, connection) {
    if (err)
    {     
      console.log("\n Nodejs connection in docker container : FAILURE\n\r" , err);
      return;
    }
    else
    {
      console.log("\n Nodejs connection in docker container : SUCCESS\n\r");
    }

});

