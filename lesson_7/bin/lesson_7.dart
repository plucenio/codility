void main(List<String> arguments) {
  var dateTime = DateTime.now();
  print(
    solution(
      List.generate(5000, (index) => index)..shuffle(),
      List.generate(5000, (index) => index % 2 == 0 ? 0 : 1),
    ),
  );
  print(DateTime.now().difference(dateTime));
}

int solution(List<int> A, List<int> B) {
  if (A.isEmpty) {
    return 0;
  }
  if (B.toSet().length == 1) {
    return A.length;
  }
  for (int i = 0; i < A.length - 1; i++) {
    if (B[i] == 1) {
      if (B[i] != B[i + 1]) {
        if (A[i] > A[i + 1]) {
          A.removeAt(i + 1);
          B.removeAt(i + 1);
          i = i > 0 ? i - 2 : -1;
          continue;
        }
        A.removeAt(i);
        B.removeAt(i);
        i = i > 0 ? i - 2 : -1;
      }
    }
  }
  return A.length;
}
