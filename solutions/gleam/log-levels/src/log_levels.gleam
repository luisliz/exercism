import gleam/string

pub fn message(log_line: String) -> String {
  let newlog = string.trim(log_line)
  case newlog {
    "[ERROR]:" <> message -> message
    "[WARNING]:" <> message -> message
    "[INFO]:" <> message -> message
    _ -> "invalid message"
  }
  |> string.trim
}

pub fn log_level(log_line: String) -> String {
  let newlog = string.trim(log_line)
  case newlog {
    "[ERROR]:" <> _ -> "error"
    "[WARNING]:" <> _ -> "warning"
    "[INFO]:" <> _ -> "info"
    _ -> "invalid log"
  }
  |> string.trim
}

pub fn reformat(log_line: String) -> String {
  let newlog = string.trim(log_line)
  case newlog {
    "[ERROR]:" <> rest -> rest |> string.trim <> " (error)"
    "[WARNING]:" <> rest -> rest |> string.trim <> " (warning)"
    "[INFO]:" <> rest -> rest |> string.trim <> " (info)"
    _ -> "invalid reformat"
  }
  |> string.trim
}
