import 'dart:math' as math;

void main(List<String> arguments) {
  final dateTime = DateTime.now();
  print(solution([3, 2, 6, -1, 4, 5, -1, 2]));
  print(DateTime.now().difference(dateTime));
}

int solution(List<int> A) {
  int N = A.length;
  List<int> k1 = List.filled(N, 0);
  List<int> k2 = List.filled(N, 0);

  for (int i = 1; i < N - 1; i++) {
    k1[i] = math.max(k1[i - 1] + A[i], 0);
  }
  for (int i = N - 2; i > 0; i--) {
    k2[i] = math.max(k2[i + 1] + A[i], 0);
  }
  int max = 0;
  for (int i = 1; i < N - 1; i++) {
    max = math.max(max, k1[i - 1] + k2[i + 1]);
  }
  return max;
}
