void main() {
  int number = 16;
  bool isprime = true;

  if (number <= 1) {
    isprime = false;
  } else {
    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) {
        isprime = false;
        break;
      }
    }
  }
  if (isprime) {
    print('$number is a prime number');
  } else {
    print('$number is not a prime  number');
  }
}
