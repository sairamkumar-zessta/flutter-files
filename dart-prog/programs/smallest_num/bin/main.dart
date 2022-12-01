void main() {
  int a = 6;
  int b = 3;
  int c = 2;
  int d = 7;
  if ((a < b) && (a < c) && (a < d)) {
    print(a);
  } else if (b < c && b < d) {
    print(b);
  } else if (c < d) {
    print(c);
  } else {
    print(d);
  }
}
