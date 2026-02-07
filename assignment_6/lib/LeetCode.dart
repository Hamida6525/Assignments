/*217. Contains Duplicate
 Given an integer array nums, return true if any value appears at least twice in the array,
 and return false if every element is distinct.*/

// bool containsDuplicate(List<int> nums) {
//   Set<int> numbers = {};
//   for (int num in nums) {
//     if (numbers.contains(num)) {
//       return true;
//     }
//     numbers.add(num);
//   }
//   return false;
// }

// bool containsDuplicate(List<int> nums) {
// Map<int, int> numberCounts = {};
//   for (int num in nums) {
//     if (numberCounts.containsKey(num)) {
//       return true;
//     }
//     numberCounts[num] = 1;
//   }
//   return false;
// }

//nested loop
bool containsDuplicate(List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] == nums[j]) {
        return true;
      }
    }
  }
  return false;
}