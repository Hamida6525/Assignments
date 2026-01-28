/*Write a Dart program that converts a list of names to a set of unique values.
 Create a map with counts of occurrences. 
 Compare lengths and print a message if a specific name appears more than once.*/

void main() {
List<String> names = ["ahmed", "mohamed", "sara", "ahmed", "laila", "mohamed"];

  
  Set<String> uniqueNames = names.toSet();

 
  Map<String, int> nameCounts = {};
  for (var name in names) {
    nameCounts[name] = (nameCounts[name] ?? 0) + 1;
  }

  print('list length: ${names.length}');
  print('Unique names length: ${uniqueNames.length}');

  String specificName = 'ahmed';
  if (nameCounts[specificName] != null && nameCounts[specificName]! > 1) {
    print(
      '$specificName appears more than once: ${nameCounts[specificName]} times.',
    );
  } else {
    print('$specificName does not appear more than once.');
  }
}
