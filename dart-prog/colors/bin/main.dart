import '../../oops/bin/constructor.dart';
import 'black.dart';
import 'green.dart';
import 'dart:math';

void main() {
  var black_obj = Black();
  black_obj.disp();
  var green_obj = Green();
  green_obj.disp();

  var mob_obj = Mobile("Realme 37", 4, 32);
  print(mob_obj.show());
  Mobile.add_display_memory(32);
  print(sqrt(49));
}
