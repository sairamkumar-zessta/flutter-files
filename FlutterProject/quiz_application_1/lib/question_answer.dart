class Display {
  final String question;
  final Map answer1;
  final Map answer2;
  final Map answer3;
  final Map answer4;

  Display(
      {required this.question,
      required this.answer1,
      required this.answer2,
      required this.answer3,
      required this.answer4});
}

List<Display> quesAnsw = [
  Display(
      question: 'What is your Favourite Animal?',
      answer1: {'answ': 'Cat', 'marks': 5},
      answer2: {'answ': 'Rabit', 'marks': 2},
      answer3: {'answ': 'Dog', 'marks': 8},
      answer4: {'answ': 'Lion', 'marks': 10}),
  Display(
      question: 'What is your Favourite Place?',
      answer1: {'answ': 'Hyderabad', 'marks': 5},
      answer2: {'answ': 'Nirmal', 'marks': 2},
      answer3: {'answ': 'Vizag', 'marks': 10},
      answer4: {'answ': 'Warangal', 'marks': 8}),
  Display(
      question: 'What is your Favourite Color?',
      answer1: {'answ': 'Red', 'marks': 8},
      answer2: {'answ': 'Blue', 'marks': 2},
      answer3: {'answ': 'Yellow', 'marks': 5},
      answer4: {'answ': 'Black', 'marks': 10}),
  Display(
      question: 'What is your Favourite Dish?',
      answer1: {'answ': 'Chicken', 'marks': 2},
      answer2: {'answ': 'Mutton', 'marks': 10},
      answer3: {'answ': 'Fish', 'marks': 8},
      answer4: {'answ': 'Sambar', 'marks': 5}),
];
