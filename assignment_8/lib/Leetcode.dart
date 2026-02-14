/*Given two strings s and t, return true if t is an anagram of s, and false otherwise.*/




bool isAnagram(String s, String t) {
  if (s.length != t.length) {
    return false;
  }
  Map<String, int> ScharCount = {};
  Map<String, int> TcharCount = {};
  for (int i = 0; i < s.length; i++) {
    ScharCount[s[i]] = (ScharCount[s[i]] ?? 0) + 1;
    TcharCount[t[i]] = (TcharCount[t[i]] ?? 0) + 1;
  }
  for (var key in ScharCount.keys) {
    if (ScharCount[key] != TcharCount[key]) {
      return false;
    }
  }
  return true;
}


// bool isAnagram(String s, String t) {
//   List<String> sList = s.split('')..sort();
//   List<String> tList = t.split('')..sort();
//   for (int i = 0; i < sList.length; i++) {
//     if (sList[i] != tList[i]) {
//       return false;
//     }
//   }
//   return true;
// }
