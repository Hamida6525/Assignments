/*Given a string s containing just the characters '(', ')', '{', '}', '[' and ']',
 determine if the input string is valid.an input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.
Examples:
- '()' → Valid
- '()[]{}' → Valid
- '(]' → Invalid
- '([)]' → Invalid
- '{[]}' → Valid*/

void main() {
  String s = '()[]{}';
  print(isValid(s));
}

bool isValid(String s) {
  List<String> stack = [];
  Map<String, String> pairs = {
    ')': '(',
    ']': '[',
    '}': '{'
  };

  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    if (pairs.containsKey(char)) {
      if (stack.isEmpty || stack.removeLast() != pairs[char]) {
        return false;
      }
    } else {
      stack.add(char);
    }
  }
  return stack.isEmpty;
}
