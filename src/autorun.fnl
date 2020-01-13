(global c (require :core))
(global utils (require :utils))
(global view (require :fennelview))
(global door (require :door))
(global button (require :button))

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
