(ns queries.queries
 (:require [codeminer-test.db.connection-string :refer [db]]
           [codeminer-test.db.sql :as sql]))

(sql/survivors-all db)

(sql/survivors db {:cols ["name" "age"]})

(sql/survivor-by-id db {:id #uuid"9e01df0b-d816-4c83-8fcd-86f50664db1b"})

(sql/survivors-by-name-like db {:name-like "P%"})
