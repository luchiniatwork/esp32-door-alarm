;; Uncomment to disable shell / comment to enable shell
;;(tset config :shell false)

;; Uncomment to disable history / comment to enable history
;;(tset config :history false)

;; Uncomment one of this to set the loglevel
;;(tset config :loglevel os.LOG_INFO)
;;(tset config :loglevel os.LOG_EMERG)
;;(tset config :loglevel os.LOG_ALERT)
;;(tset config :loglevel os.LOG_CRIT)
;;(tset config :loglevel os.LOG_ERR)
;;(tset config :loglevel os.LOG_WARNING)
;;(tset config :loglevel os.LOG_DEBUG)
;;(tset config :loglevel os.LOG_ALL)

;; Uncomment to disable syslog messages on the console
;;(tset config :logcons false)

;; Uncomment to enable wifi / comment to disable it
(tset config :wifi true)

;; Uncomment to enable ethernet / comment to disable it
;;(tset config :ethernet true)

;; Uncomment to enable sntp client / comment to disable it
;;(tset config :sntp true)

;; Uncomment to enable http server / comment to disable it
;;(tset config :http true)

;; Uncomment to enable OpenVpn client / comment to disable it
;;(tset config :openvpn true)

;; Uncomment to enable the ssh server / comment to disable it
;;(tset config :ssh true)

;; Uncomment to enable can gateway
;;(tset config :can {:gw true})

(tset config :data
      {:wifi {:ssid "luchinihome"
              :pass "FiqueLonge"
              ;; :ip (net.packip 192 168 1 100)
              ;; :mask (net.packip 255 255 255 0)
              ;; :gw (net.packip 192 168 1 1)
              ;; :dns1 (net.packip 8 8 8 8)
              ;; :dns2 (net.packip 8 8 4 4)
              }
       :ethernet {;; :ip (net.packip 192 168 1 100)
                  ;; :mask (net.packip 255 255 255 0)
                  ;; :gw (net.packip 192 168 1 1)
                  ;; :dns1 (net.packip 8 8 8 8)
                  ;; :dns2 (net.packip 8 8 4 4)
                  }
       :http {:httpPort 80
              ;; Non-0 for HTTPS (then provide caFiile / keyFile)
              :httpsPort 0
              :caFile ""
              :keyFile ""}
       :can {:gw {:port 1333
                  :speed 1000}}})
