(ns queries.queries
 (:require [codeminer-test.connection-string :refer [db]]
           [codeminer-test.db.sql :as sql]
           [clojure.pprint :as pprint]))

(sql/survivors db {:cols ["name"]})
