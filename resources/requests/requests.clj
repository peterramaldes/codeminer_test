(require '[clj-http.client :as client])
(require '[cheshire.core :as json])

(->
 (client/get "http://[::1]:3000/api/survivors")
 (try (catch Exception e (ex-data e)))
 :body
 (json/parse-string true))