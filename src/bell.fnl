(thread.start
 (fn []
   (let [bell-pin pio.GPIO2]
     (pio.pin.setdir pio.OUTPUT bell-pin)
     (pio.pin.setpull pio.NOPULL bell-pin)
     (while true
       (pio.pin.sethigh bell-pin)
       (tmr.delayms 500)
       (pio.pin.setlow bell-pin)
       (tmr.delayms 250)))))
