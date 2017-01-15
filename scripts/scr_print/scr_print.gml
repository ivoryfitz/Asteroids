if (debug_mode) {
  var stringBuilder = "[DEBUG]====" + argument[0] + "====" + "\n";
  for (var i = 1; i < argument_count; i++) {
    stringBuilder += "\t" + argument[i++] + "::" + string(argument[i]);  
  }
  show_debug_message(stringBuilder)
}