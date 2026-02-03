/*Valid Palindrome*/
/*Given a string s, return true if it is a palindrome, or false otherwise.*/


class Solution {
  bool isPalindrome(String s) {
    String x = s.replaceAll(RegExp(r'[^A-Za-z0-9]'), '').toLowerCase();
    return x == x.split('').reversed.join();
  }
}

/*bool isPalindrome(String s) {
  s = s.replaceAll(RegExp(r'[^A-Za-z0-9]'), '').toLowerCase();
  return s.split('').reversed.join()==s;
}*/