void main(List<String> arguments) {
  print('Insert a value to calculate:');
  //final value = stdin.readLineSync(encoding: utf8);
  //if (value == null || value.isEmpty) {
  //  print('Invalid value');
  //  return;
  //}
  int number = int.parse('5');
  BigInt bin = toBinary(number);
  print(getBiggerZeroLenght(bin));
}

int solution(int N) {
  BigInt bin = toBinary(N);
  return getBiggerZeroLenght(bin);
}

BigInt toBinary(int input) {
  return BigInt.parse(input.toRadixString(2));
}

int getBiggerZeroLenght(BigInt bin) {
  int bigger = 0;
  final value = bin.toString();
  print(value);
  if (value.length - value.replaceAll('1', '').length <= 1) {
    return 0;
  }
  final lastIndexOf = value.lastIndexOf('1') + 1;
  value.substring(0, lastIndexOf).split('1').forEach((element) {
    bigger = bigger < element.length ? element.length : bigger;
  });
  return bigger;
}
