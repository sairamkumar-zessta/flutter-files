void main() {
  int date = 23;
  String first_day = "Saturday";
  Map day_num = {
    "Sunday": 0,
    "Monday": 1,
    "Tuesday": 2,
    "Wednesday": 3,
    "Thursday": 4,
    "Friday": 5,
    "Saturday": 6
  };
  Map num_day = {};
  day_num.forEach((key, value) => num_day[value] = key);

  var req_day = (date - 1 + day_num[first_day]) % 7;
  print(num_day[req_day]);
}
