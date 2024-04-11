void main(List<String> arguments) {
  final datetime = DateTime.now();
  print(solution(1, 10, 2));
  print(DateTime.now().difference(datetime));
}

int solution(int A, int B, int K) {
  if (A > B || K == 0) return 0;
  final list = List.generate((B - A) + 1, (index) => index + A)
    ..removeWhere((element) => element % K != 0);
  return list.length;
}
