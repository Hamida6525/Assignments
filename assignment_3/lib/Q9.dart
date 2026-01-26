/*Write a Dart program that removes duplicate items from a list using a Set. 
Compare the unique count with the original list length 
and print a message if duplicates were removed.*/

void main() {
  List<int> originalList = [1, 8, 5, 6, 6, 5, 7, 2];

  Set<int> uniqueSet = {1, 8, 5, 6, 6, 5, 7, 2};

  if(originalList.length != uniqueSet.length); {
    print("Duplicates were removed.");
  }
}
