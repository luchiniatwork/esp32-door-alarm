(fn play []
  (let [piezzo-pin pio.GPIO2
        inst (sound.attach sound.PWM piezzo-pin)]

    (inst:timesignature 3 4 240)

    (each [_ _ (ipairs [1 2])]
      (inst:playsilence "4")
      (inst:playsilence "4")
      
      (each [_ tuple (ipairs [["B4" 4] ["E4." 5]
                              ["G8" 5] ["F#4" 5]
                              ["E2" 5] ["B4" 5]
                              ["A2." 5] ["F#2." 5]
                              ["E4." 5] ["G8" 5]
                              ["F#4" 5] ["D2" 5]
                              ["F4" 5] ["B2." 4]])]
        (inst:playnote (. tuple 1) (. tuple 2))))

    (inst:detach)))

(play)
