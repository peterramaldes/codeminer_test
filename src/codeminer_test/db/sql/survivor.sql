-- :name survivors-all :? :*
-- :doc select all the survivors with all the attributes
SELECT *
    FROM survivor

-- :name survivors
-- :command :query
-- :result n
-- :doc select all with cols defined by {:cols [<col_name>...]}
SELECT :i*:cols
  FROM survivor

-- Note the terse style below
-- ":command :query" -> ":?"
-- ":result n" -> ":*"

-- :name survivor-by-id :? :*
-- :doc get survivor info by id
SELECT *
  FROM survivor
 WHERE id = :id

-- :name survivors-by-name-like :? :*
-- :doc use {:name-like "P%"} as the option param to get the P's
SELECT *
  FROM survivor
 WHERE name
  LIKE :name-like