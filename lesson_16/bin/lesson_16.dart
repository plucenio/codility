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
  int count = 0;
  final N = A.length;
  for (var i = 0; i < N; i++) {
    if (i == N - 1) {
      if (B[i - 1] < A[i]) {
        count++;
      }
      break;
    }
    //Tem interseccão?
    if (A[i + 1] <= B[i]) {
      //A linha seguinte é menor que a atual?
      if (B[i + 1] < B[i]) {
        count++;
        continue;
      }
      i++;
    }
    count++;
  }
  return count;
}
