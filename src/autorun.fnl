(global c (require :core))
(global utils (require :utils))
(global view (require :fennelview))
(global door (require :door))
(global button (require :button))
(global bms (require :bms))

(local my-door (door.start {:door-pin pio.GPIO4
                            :pin-mode pio.PULLDOWN
                            :actuation-mode :NC}))

(local my-button (button.start {:button-pin pio.GPIO33
                                :pin-mode pio.PULLDOWN}))

(utils.listen my-door.open-event
              (fn [] (print "door open")))
(utils.listen my-door.close-event
              (fn [] (print "door closed")))

(utils.listen my-button.down-event
              (fn [] (print "button down")))
(utils.listen my-button.up-event
              (fn [] (print "button up")))


(global my-bms (bms.start {:battery-pin pio.GPIO34
                           :total-battery-voltage 4.5
                           :threshold-voltage 3.3}))
(utils.listen my-bms.low-battery-event
              (fn [] (print "low battery")))

(tmr.delay 10)
(print (my-bms.get-state))


;; (utils.listen my-button.press-event
;;               (fn [] (print "button press")))


;; (thread.start
;;  (fn []
;;    (while true
;;      (print (my-door.get-state))
;;      (tmr.delayms 1000))))

;; (thread.start
;;  (fn []
;;    (while true
;;      (my-door.open-event:wait)
;;      (print "door is now open")
;;      (my-door.open-event:done)
;;      (tmr.delayms 20))))

;; (thread.start
;;  (fn []
;;    (while true
;;      (my-door.close-event:wait)
;;      (print "door is now closed")
;;      (my-door.close-event:done)
;;      (tmr.delayms 20))))

;; (dofile "play.lua")

;; (while (not (net.connected))
;;   (print ".")
;;   (tmr.delay 2))
;; (print "my ip" (-> (net.stat true) (. 0) (. :ip)))
