import 'dart:math' as math;

void main(List<String> arguments) {
  print(solution([1, 5, 2, -2]));
}

int solution(List<int> A) {
  int N = A.length;
  A.sort();
  int tail = 0;
  int head = N - 1;
  int minAbsSum = (A[tail] + A[head]).abs();
  while (tail <= head) {
    int currentSum = A[tail] + A[head];
    minAbsSum = math.min(minAbsSum, currentSum.abs());
    if (currentSum <= 0) {
      tail++;
    } else {
      head--;
    }
  }
  return minAbsSum;
}
