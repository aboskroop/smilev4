do local _ = {
  about_text = "smilebot v4",
  enabled_plugins = {
    "supergroup",
    "help",
    "plugins",
    "addreply",
    "anti_spam",
    "fuck_edit",
    "me",
    "isup",
    "leave_bot",
    "lock_fwd",
    "lock_sex",
    "run",
    "lock_media",
    "lock_user",
    "msg_checks",
    "replay",
    "banhammer",
    "update",
    "info_s",
    "say",
    "addsudo",
    "time",
    "lock_bot",
    "info"
    },
  help_text = "",
  help_text_realm = "",
  help_text_super = "",
  moderation = {
    data = "data/moderation.json"
  },
  sudo_users = {
    115124695,
    447971252
  }
}
return _
end
