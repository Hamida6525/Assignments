/*Given two strings s and t, return true if t is an anagram of s, and false otherwise.*/


bool isAnagram(String s, String t) {
  List<String> sList = s.split('')..sort();
  List<String> tList = t.split('')..sort();
  for (int i = 0; i < sList.length; i++) {
    if (sList[i] != tList[i]) {
      return false;
    }
  }
  return true;
}