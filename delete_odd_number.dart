void main() {
  List a = [2, 3, 4, 7, 8, 9, 4];
  int n = a.length;

  for (var i = 0; i < n; i++) {
    if (a[i] % 2 == 1) {
      for (var j = i; j < n - 1; j++) {
        a[j] = a[j + 1];
      }
      n--;
      i--;
    }
  }
  for (var i = 0; i < n; i++) {
    print(a[i]);
  }
}
