void main(List<String> args) {
  // RIZKI ANDIKA SETIADI
  // NO 1
  List<String> itemName = [
    'Amuse',
    'Tommy Kaira',
    'Spoon',
    'HKS',
    'Litchfield',
    'Amuse',
    'HKS'
  ];
  var uniqueItem = itemName.toSet().toList();
  print(uniqueItem);

  List<String> itemName2 = [
    'JS Racing',
    'Amuse',
    'Spoon',
    'Spoon',
    'JS Racing',
    'Amuse'
  ];
  var uniqueItem2 = itemName2.toSet().toList();
  print(uniqueItem2);

  // NO 2
  List<String> programmingLanguage = [
    'JS',
    'JS',
    'JS',
    'Golang',
    'Python',
    'JS',
    'JS',
    'Golang',
    'Rust'
  ];

  var countJS =
      programmingLanguage.where((element) => element.contains('JS')).length;
  var countGolang =
      programmingLanguage.where((element) => element.contains('Golang')).length;
  var countPython =
      programmingLanguage.where((element) => element.contains('Python')).length;
  var countRust =
      programmingLanguage.where((element) => element.contains('Rust')).length;

  print('JS : $countJS');
  print('Golang : $countGolang');
  print('Python : $countPython');
  print('Rust : $countRust');
}
