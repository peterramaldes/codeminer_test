(ns codeminer-test.handler
 (:require [compojure.core :refer :all]
           [compojure.route :as route]
           [compojure.handler :as handler]
           [ring.middleware.json :as json]
           [ring.util.response :refer [response]]))

(defroutes app-routes
           (GET "/" [] (response "Hello World"))
           (POST "/api/survivors" {:keys [params]} (let [{:keys [name age gender last-location]} params]
                                                    (response {:name name :age age :gender gender :last-location last-location})))
           (route/not-found "Not Found"))

(def app
 (-> (handler/api app-routes)
     (json/wrap-json-params)
     (json/wrap-json-response)))
