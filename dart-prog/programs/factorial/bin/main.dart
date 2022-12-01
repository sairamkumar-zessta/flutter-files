import "dart:math";

void main() {
  int m = 2;
  int n = 20;
  List fact_list = [];

  for (int i = m; i <= n; i++) {
    for (int j = 4; j < i; j++) {
      for (int k = 3; k < j; k++) {
        if (pow(i, 2) == (pow(j, 2) + pow(k, 2))) {
          List req_list = [i, j, k];
          fact_list.add(req_list);
        }
      }
    }
  }
  print(fact_list);
}
