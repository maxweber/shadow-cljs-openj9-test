(ns openj9-test.core
  (:require [reagent.core]
            [reagent.dom :as rdom]))

(defn app []
  [:h1 "Hello World"])

(defn ^:export init []
  (rdom/render [app] (.getElementById js/document "app")))
