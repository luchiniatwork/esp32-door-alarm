(ns user
  (require [blackdog.core :as bd]))

(comment
  (def board (bd/connect-board! "/dev/tty.SLAB_USBtoUART"))

  (bd/watch-dir! board "src" "esp32-shared/src")

  (bd/send-command! board "net.connected()")
  (bd/send-command! board "view(net.stat(true)[0][\"ip\"])")o

  (bd/send-command! board "__fnl_global__my_2dbms[\"get-state\"]()[\"state\"]")

  (bd/send-command! board "os.cat(\"system.lua\")")

  (bd/send-command! board "os.ls(\"examples/lua\")")

  (bd/send-command! board "os.ls(\"lib/share/lua\")")

  (bd/send-command! board "thread.list()")

  (bd/send-command! board "os.remove(\"bell2.lua\")")

  (bd/send-command! board "dofile(\"bell.lua\")")

  (bd/send-command! board "dofile(\"play.lua\")")

  (bd/send-command! board "dofile(\"door.lua\")")

  (bd/send-command! board "package.path")
  
  (bd/send-command! board "package.loaded[\"fennelview\"] = nil")
  (bd/send-command! board "view = require(\"fennelview\")")
  (bd/send-command! board "view(pio)")

  (bd/send-command! board "")
  
  (bd/send-command! board "config.data.wifi")
  
  (bd/disconnect-board! board)
  )
