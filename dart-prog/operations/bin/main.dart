void main() {
  // +,-,*,/,~/,%
  var a = 10;
  var b = 20;
  var c = 50;
  var d = 3;

  print(a + b);
  print(c - a);
  print(d - b);
  print(b * d);
  print(a / d);
  print(a ~/ d);
  print(a % d);

// ## Prefix and Postfix Increment and Decrement operators
  var i = 3;
  print(i);
  // print(++i);
  print(i++);
  print(i);

  var k = 5;
  print(k);
  print(--k);
  // print(k--);
  print(k);

// ## Equality and Relational operators

  var x = 100;
  var y = 200;
  print(x == y);
  print(x != y);
  print(x < y);
  print(x <= y);
  print(x > y);
  print(x >= y);

// ## logical opearators

  var p = true;
  var q = false;
  print(p && p);
  print(p && q);

  // print(p || p);
  // print(p || q);

  print(!p);
  print(!q);

// ## type test operators
  // var name = "Sonam";
  // var number = 10;
  // var req = true;
  // print(name is String);
  // print(number is! int);
  // print(number is double);
  // print(req is bool);

// ## Assignment Operators
  var n = 10;
  print(n);
  n += 5; //  n = n+5 ;
  print(n);
  n -= 5; //  n = n-5 ;
  print(n);
  n *= 5; //  n = n*5 ;
  print(n);

// # conditional Expression
  // var is_login = false;
  // // condition ? exp1 : exp2;
  // var user = is_login ? 'Sai' : 'Guest';
  // print(user);

  // var name3 = "sai";
  // var need = name3 ?? 'Guest';
  // print(need);
  // var name_f = null;
  // var need_f = name_f ?? 'Guest';
  // print(need_f);
}
