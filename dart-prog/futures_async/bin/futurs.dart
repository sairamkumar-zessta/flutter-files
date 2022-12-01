void main() {
  // var result = 1 + 1;
  // print(result);
  var myFuture = Future(() {
    return 'Hello';
  });
  print('This runs first!');
  myFuture.then((result) => print(result)).catchError((error) {
    // ..
  }).then((_) {
    print('After first then');
  });
  print('This runs before the future is done!');
}
