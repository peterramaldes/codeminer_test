(ns codeminer-test.handler-test
 (:require [clojure.test :refer :all]
           [ring.mock.request :as mock]
           [codeminer-test.handler :refer :all]
           [cheshire.core :as cheshire]))

(defn parse-body [body]
 (cheshire/parse-string body true))

(deftest test-app

 (testing "main route"
  (let [response (app (mock/request :get "/"))]
   (is (= (:status response) 200))
   (is (= (:body response) "Hello World"))))

 (testing "Adicionar sobrevivente na base de dados."
  (let [survivor {:name          "Jeffrey Dean Morgan"
                  :age           32
                  :gender        "M"
                  :last-location {:latitude  50
                                  :longitude 100}}
        response (app (-> (mock/request :post "/api/survivors")
                          (mock/content-type "application/json")
                          (mock/body (cheshire/generate-string survivor))))
        body (parse-body (:body response))]
   (is (= (:status response) 200))
   (is (= body survivor))))

 (testing "Adicionar sobrevivente na base de dados."
  (let [survivor {:name          "Peter"
                  :age           24
                  :gender        "M"
                  :last-location {:latitude  50
                                  :longitude 100}}
        response (app (-> (mock/request :post "/api/survivors")
                          (mock/content-type "application/json")
                          (mock/body (cheshire/generate-string survivor))))
        body (parse-body (:body response))]
   (is (= (:status response) 200))
   (is (= body survivor))))

 (testing "not-found route"
  (let [response (app (mock/request :get "/invalid"))]
   (is (= (:status response) 404)))))
