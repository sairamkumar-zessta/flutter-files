void main() {
  var a = "Scissor"; //Anil
  var b = "Paper"; //Sai
  if (a == b) {
    print("Tie");
  } else if (a == "Rock") {
    if (b == "Paper") {
      print("Sai is Winner");
    } else {
      print("Anil is Winner");
    }
  } else if (a == "Paper") {
    if (b == "Scissor") {
      print("Sai is Winner");
    } else {
      print("Anil is Winner");
    }
  } else {
    if (b == "Rock") {
      print("Sai is Winner");
    } else {
      print("Anil is Winner");
    }
  }
}
