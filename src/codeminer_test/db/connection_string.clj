(ns codeminer-test.db.connection-string)

(def db
 {:classname   "org.postgresql.Driver"
  :subprotocol "postgresql"
  :subname     "//localhost:5432/codeminer_test"
  :user        "codeminer_user"
  :password    "codeminer_pass"})
