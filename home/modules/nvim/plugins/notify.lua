require("notify").setup({
  background_colour = "NotifyBackground",
  fps = 30,
  icons = {
    DEBUG = "",
    ERROR = "",
    INFO = "",
    TRACE = "✎",
    WARN = "",
  },
  level = 2,
  minimum_width = 50,
  render = "default",
  stages = "fade_in_slide_out",
  time_formats = {
    notification = "%R",
    notification_history = "%F%R",
  },
  timeout = 5000,
  top_down = true,
})
