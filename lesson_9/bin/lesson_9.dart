import 'dart:collection';

void main(List<String> arguments) {
  final dateTime = DateTime.now();
  print(solution(List.generate(500, (index) => index)));
  print(DateTime.now().difference(dateTime));
}

int solution(List<int> A) {
  int greaterSum = 0;
  int greaterZ = 0;
  for (int x = 0; x <= A.length; x++) {
    for (int y = 1; y <= A.length - 3; y++) {
      for (int z = 2; z <= A.length - 2; z++) {
        if (z > y && y > x && x >= 0) {
          if (greaterZ > A[z - 1]) continue;
          greaterZ = z - 1;
          HashSet<int> set = HashSet<int>.from([
            A[x + 1],
            A[x + 2],
            A[y - 1],
            A[y + 1],
            A[y + 2],
            A[greaterZ],
          ]);
          int number = 0;
          for (var element in set) {
            number += element;
          }
          if (number > greaterSum) {
            greaterSum = number;
          }
        }
      }
    }
  }
  return greaterSum;
}
