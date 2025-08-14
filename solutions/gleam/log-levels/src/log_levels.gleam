import gleam/string

pub fn message(log_line: String) -> String {
  let trimmed_log = string.trim(log_line)

  // string.contains(message, "")
  case trimmed_log {
    "ERROR]:" <> message -> message
    "WARNING]:" <> message -> message
    "INVALID]:" <> message -> message
    _ -> "invalid message"
  }
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "ERROR" <> _ -> "error"
    "WARNING" -> "warning"
    _ -> "invalid log"
  }
}

pub fn reformat(log_line: String) -> String {
  case log_line {
    "ERROR]:" <> rest -> rest <> "(error)"
    "WARNING]:" -> "warning"
    _ -> "invalid reformat"
  }
}
