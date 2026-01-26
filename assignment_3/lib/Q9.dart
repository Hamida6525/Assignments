/*Write a Dart program that removes duplicate items from a list using a Set. 
Compare the unique count with the original list length and print a message if duplicates were removed.*/

void main() {
  List<int> originalList = [1, 8, 5, 6, 6, 5, 7, 2];

  // Create a Set from the original list to remove duplicates
  Set<int> uniqueSet = {1, 8, 5, 6, 6, 5, 7, 2};

  // Convert the Set back to a List
  List<int> uniqueList = uniqueSet.toList();

  // Compare lengths and print message if duplicates were removed
  if (uniqueList.length < originalList.length) {
    print("Duplicates were removed.");
  } else {
    print("No duplicates found.");
  }

  print("List: $originalList");
  print("Unique List: $uniqueList");
}
