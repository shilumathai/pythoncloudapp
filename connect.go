package main

import(
    "fmt"
    _ "github.com/ibmdb/go_ibm_db"
    "database/sql"
)

func main(){
    db, err := sql.Open("go_ibm_db", "HOSTNAME=21fecfd8-47b7-4937-840d-d791d0218660.bs2io90l08kqb1od8lcg.databases.appdomain.cloud;DATABASE=BLUDB;Security=SSL;PORT=31864;UID=qwf74316;PWD=8qMViBjOkj4tgucP")
    if err != nil {
        fmt.Println("go ibm driver connection: FAILURE\n" ,err)
    }
    if err = db.Ping(); err != nil {
        fmt.Println("go ibm driver connection: FAILURE\n" ,err)
    } else {
    fmt.Println("go ibm driver connection: SUCCESS\n")
    }
}

