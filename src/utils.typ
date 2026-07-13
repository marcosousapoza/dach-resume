// Kept as a tiny convenience for callers that build date ranges dynamically.
#let dates-helper(start-date: "", end-date: "") = {
  if start-date == "" { end-date } else { start-date + " – " + end-date }
}
