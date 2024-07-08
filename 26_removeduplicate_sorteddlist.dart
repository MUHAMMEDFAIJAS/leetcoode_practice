class Solution {
  List<int> expectedNums = [];
  int A = 1;
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) {
      return 0;
    } else if (nums.length == 1) {
      expectedNums.addAll(nums);
      return 1;
    }
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] != nums[i + 1]) {
        nums[A] = nums[i + 1];
        A++;
      }
    }
    expectedNums = nums;
    return A;
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [1, 1, 2];
  int newLength = solution.removeDuplicates(nums);

  print("New length: $newLength");
  print("Updated nums: ${solution.expectedNums}");
}
