/*Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
  You must implement a solution with a linear runtime complexity and use only constant extra space.*/
 

 
int singleNumber(List<int> nums) {
  int result = 0;
  for (int num in nums) {
    result ^= num;
  }
  return result;
} 

// int singleNumber(List<int> nums) {
//  Map<int, int> countMap = {};
//     for (int num in nums) {
//       countMap[num] = (countMap[num] ?? 0) + 1;
//     }
//     for (var entry in countMap.entries) {
//       if (entry.value == 1) {
//         return entry.key;
//       }
//     }
//     return -1; 
//   }