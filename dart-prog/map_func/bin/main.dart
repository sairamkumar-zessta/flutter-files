void main() {
  var list_a = ['12', '4', '44', '22'];
  var req = (list_a.map((e) {
    return int.parse(e);
  })).toList();
  print(req);
  print(req.runtimeType);
}
