(ns codeminer-test.db.sql
  (:require [hugsql.core :as hugsql]))

(hugsql/def-db-fns "codeminer_test/db/sql/survivor.sql")