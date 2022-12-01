void main() {
  List primes_list = [];
  var m = 1;
  var n = 10;

  for (m; m <= n; m++) {
    bool prime = true;
    if (m < 2) {
      prime = false;
    } else if (m == 2) {
      prime = true;
    } else {
      for (var i = 2; i < m; i++) {
        if (m % i == 0) {
          prime = false;
          break;
        }
      }
    }
    if (prime) {
      primes_list.add(m);
    }
  }
  print(primes_list);
}
