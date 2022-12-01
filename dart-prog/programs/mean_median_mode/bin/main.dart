void main() {
  mean(list_a) {
    dynamic total = 0;
    list_a.forEach((element) => (total += element));
    var k = total / list_a.length;
    k = (k * 100).round();
    k = k / 100;
    print("Mean : $k");
  }

  median(list_a) {
    list_a.sort();
    int p = list_a.length;
    if (p.isOdd) {
      p = p ~/ 2;
      print("Median : ${list_a[p]}");
    }
  }

  mode(list_a) {
    var list_new = [...list_a];
    Set set_a = {};
    Map map_a = {};
    list_a.forEach((element) => set_a.add(element));
    set_a.forEach((element) => map_a[element] = 0);
    for (var i in set_a) {
      while (list_new.contains(i)) {
        map_a[i] = map_a[i] + 1;
        list_new.remove(i);
      }
    }
    var c = 0;
    map_a.forEach((key, value) {
      if (c < map_a[key]) {
        c = value;
      }
    });
    List need = [];
    map_a.forEach((key, value) {
      if (c == map_a[key]) {
        need.add(key);
      }
    });
    print('Mode : ${need.join(" ")}');
  }

  List list_a = [1, 2, 2, 2, 6, 6, 4, 4, 4, 7, 8];
  mean(list_a);
  median(list_a);
  mode(list_a);
}
