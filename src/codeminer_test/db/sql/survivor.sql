-- :name survivors-all
SELECT * FROM survivor

-- :name survivors
SELECT :i*:cols FROM survivor

-- :name survivor-by-id :? :*
SELECT * FROM survivor WHERE id = :id

-- :name survivors-by-name-like :? :*
SELECT * FROM survivor WHERE name LIKE :name-like