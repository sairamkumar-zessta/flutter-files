// #List
void main() {
//## Fixed length list
  final fixedLengthList = List<int>.filled(5, 0); // Creates fixed-length list.
  print(fixedLengthList); // [0, 0, 0, 0, 0]
  fixedLengthList[0] = 87;
  fixedLengthList.setAll(1, [1, 2, 3]);
  print(fixedLengthList); // [87, 1, 2, 3, 0]

  List<String> list_2 = ["HTML", "CSS", "Javascript"];
  print(list_2);

  final growableList = <String>['A', 'B']; // Creates growable list.
//To add data to the growable list, use [operator[]=], [add] or [addAll].
  growableList[0] = 'G';
  print(growableList); // [G, B]
  growableList.add('X');
  growableList.addAll({'C', 'B'});
  print(growableList); // [G, B, X, C, B]
//To check whether, and where, the element is in the list, use [indexOf] or [lastIndexOf].

  final indexA = growableList.indexOf('A'); // -1 (not in the list)
  final firstIndexB = growableList.indexOf('B'); // 1
  final lastIndexB = growableList.lastIndexOf('B'); // 4
  print(indexA);
  print(firstIndexB);
  print(lastIndexB);

  growableList.remove('C');
  growableList.removeLast();
  print(growableList); // [G, B, X]
//To insert an element at position in the list, use [insert] or [insertAll].

  growableList.insert(1, 'New');
  print(growableList); // [G, New, B, X]
//To replace a range of elements in the list, use [fillRange], [replaceRange] or [setRange].

  growableList.replaceRange(0, 2, ['AB', 'A']);
  print(growableList); // [AB, A, B, X]
  growableList.fillRange(2, 4, 'F');
  print(growableList); // [AB, A, F, F]

  var list_a = [1, 2, 3, 4, 5];
  print(list_a);
  print(list_a.runtimeType);

  var list_b = [1, 2, 3, 4, "Five"];
  print(list_b);
  print(list_b.runtimeType);

  var women = ["Durga", "Shambhavi", "Ramya"];
  var men = ["Sai", "Anil"];
  var karthikwithmen = ["Karthik", ...men];
  print(karthikwithmen);
  var rekhawithwomen = [...women, "Rekha"];
  print(rekhawithwomen);
  var people = [...women, ...men];
  print(people);

  //Empty list and add() method
  // List() Constructor
  var student = []; //List.empty(growable: true);
  student.add("Tej");
  student.add("Vishnu");
  student.add("Raju");
  print(student);
  print(student.runtimeType);

  // ## List Properties and Methods
  // ## properties
  print(student.length);
  print(student.isEmpty);
  print(student.isNotEmpty);
  print(student.reversed);
  print(student.first);
  print(student.last);
  print(student);
  //## Methods
  student.remove('Raju');
  print(student);
  student.add("Raju");
  student.removeAt(1);
  print(student);
  student.removeLast();
  print(student);
}
