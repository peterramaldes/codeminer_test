(defproject codeminer_test "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :min-lein-version "2.0.0"
  :dependencies [[org.clojure/clojure "1.10.0"]
                 [compojure "1.6.1"]
                 [ring/ring-defaults "0.3.2"]
                 [ring/ring-core "1.8.0"]
                 [ring/ring-json "0.5.0"]
                 [cheshire "5.10.0"]
                 [org.postgresql/postgresql "42.2.9"]
                 [com.layerware/hugsql "0.5.1"]]
  :plugins [[lein-ring "0.12.5"]]
  :ring {:handler codeminer-test.handler/app}
  :profiles
  {:dev {:dependencies [[javax.servlet/servlet-api "2.5"]
                        [ring/ring-mock "0.3.2"]]}})
