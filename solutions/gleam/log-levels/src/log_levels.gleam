import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[ERROR]:" <> message -> message
    "[WARNING]:" <> message -> message
    "[INFO]:" <> message -> message
    _ -> "invalid message"
  }
  |> string.trim
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[ERROR]:" -> "error"
    "[WARNING]:" -> "warning"
    "[INFO]:" -> "info"
    _ -> "invalid log"
  }
  |> string.trim
}

pub fn reformat(log_line: String) -> String {
  case log_line {
    "[ERROR]:" <> rest -> rest |> string.trim <> " (error)"
    "[WARNING]:" <> rest -> rest |> string.trim <> " (warning)"
    "[INFO]:" <> rest -> rest |> string.trim <> " (info)"
    _ -> "invalid reformat"
  }
  |> string.trim
}
