(ns queries.queries
 (:require [codeminer-test.db.connection-string :refer [db]]
           [codeminer-test.db.sql :as sql]))

(sql/survivors-all db)

(sql/survivors db {:cols ["id" "name" "age"]})

(sql/survivor-by-id db {:id #uuid"<ID>"})

(sql/survivors-by-name-like db {:name-like "P%"})
