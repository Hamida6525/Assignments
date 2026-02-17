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
  Map<String, String> pairs = {')': '(', ']': '[', '}': '{'};

  for (var char in s.split('')) {
    if (pairs.values.contains(char)) {
      stack.add(char);
    } else {
      String openingBrackets = pairs[char]!;
      if (stack.isEmpty || stack.removeLast() != openingBrackets) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}
