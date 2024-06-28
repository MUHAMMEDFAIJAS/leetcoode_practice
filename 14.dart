// longest common prefix

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    String prefix = strs[0];

    for (int i = 1; i < strs.length; i++) {
      for (int j = 0; j < prefix.length; j++) {
        if (j == strs[i].length || strs[i][j] != prefix[j]) {
          prefix = prefix.substring(0, j);
          break;
        }
      }
    }

    return prefix;
  }
}

void main() {
  Solution solution = Solution();

  List<String> strs1 = ["flower", "flow", "flight"];
  List<String> strs2 = ["ddg", "ddracecar", "ddcar"];
  List<String> strs = ["dkkg", "rkkracecar", "ekkcar"];

  print(solution.longestCommonPrefix(strs1));
  print(solution.longestCommonPrefix(strs2));
  print(solution.longestCommonPrefix(strs));
}
