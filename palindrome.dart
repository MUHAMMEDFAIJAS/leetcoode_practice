// palindrome with method

void main() {
  // String input = "malayalam";
  // String reverseinput = input.split('').reversed.join('');

  // if (input == reverseinput) {
  //   print('$input is palindrome');
  // } else {
  //   print('$input is not a palindrome');
  // }

  String name = "malayalam";
  var n = name.length;
  bool isPalindrome = true;

  for (var i = 0; i < n; i++) {
    if (name[i] != name[n - i - 1]) {
      isPalindrome = false;
      break;
    }
  }

  if (isPalindrome) {
    print("Palindrome");
  } else {
    print("Not a palindrome");
  }
}
