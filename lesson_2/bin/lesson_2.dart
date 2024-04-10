void main(List<String> arguments) {
  solution([], 3);
}

List<int> solution(List<int> A, int K) {
  if (A.isEmpty) {
    return A;
  }
  for (int i = 0; i < K; i++) {
    A = [A.last] + A.sublist(0, A.length - 1);
  }
  return A;
}
