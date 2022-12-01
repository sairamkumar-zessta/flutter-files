void main() {
  var sec = 108647;
  var out = "";
  if (sec >= 86400) {
    var days = sec ~/ 86400;
    sec = sec % 86400;
    out += 'Days:$days ';
  }
  if (sec >= 3600) {
    var hours = sec ~/ 3600;
    sec = sec % 3600;
    out += 'Hours:$hours ';
  }
  if (sec >= 60) {
    var min = sec ~/ 60;
    sec = sec % 60;
    out += 'Minutes:$min ';
  }
  if (sec >= 1) {
    out += 'Seconds:$sec ';
  }
  print(out);
}
