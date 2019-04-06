(ns fib.core
  (:gen-class))

; (defn fib
;   [[prev curr]]
;   [curr (+ prev curr)])

; This is actually about the same speed
; as the newer one when fully jitted :shrug:
; (defn old-fib
;   []
;   (doseq [x (take 90 (iterate fib [0 1]))]
;     (println (format "%20d" (first x)))))

(defn new-fib
  []
  (loop [idx 0
         prev 0
         curr 1]
    (when (< idx 90)
      (println (format "%20d" prev))
      (recur (inc idx) curr (+ prev curr)))))

(defn -main
  []
  (new-fib))
