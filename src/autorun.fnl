(global c (require :core))
(global utils (require :utils))
(global view (require :fennelview))
(global door (require :door))

(local my-door (door.start {:door-pin pio.GPIO4
                            :pin-mode pio.PULLDOWN
                            :actuation-mode :NC}))

(utils.listen my-door.open-event
              (fn [] (print "completely different open handler")))

(thread.start
 (fn []
   (while true
     (print (my-door.get-state))
     (tmr.delayms 1000))))

(thread.start
 (fn []
   (while true
     (my-door.open-event:wait)
     (print "door is now open")
     (my-door.open-event:done)
     (tmr.delayms 20))))

(thread.start
 (fn []
   (while true
     (my-door.close-event:wait)
     (print "door is now closed")
     (my-door.close-event:done)
     (tmr.delayms 20))))

;; (dofile "play.lua")
