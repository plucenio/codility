void main(List<String> arguments) {
  print(solution(
    [0],
    [1],
  ));
}

int solution(List<int> A, List<int> B) {
  if (A.length <= 1) {
    return A.length;
  }
  int lastB = -1;
  int result = 0;
  for (int x = 0; x < A.length; x++) {
    if (A[x] > lastB) {
      result += 1;
      lastB = B[x];
    }
  }
  return result;
}
