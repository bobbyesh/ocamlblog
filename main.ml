open Lwt
open Cohttp
open Cohttp_lwt_unix

let server =
  Server.create ~mode:(`TCP (`Port 8000)) (Server.make ~callback: Handler.callback ())

let () = ignore (Lwt_main.run server)
