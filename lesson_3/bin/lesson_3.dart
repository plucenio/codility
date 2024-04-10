void main(List<String> arguments) {
  final result = solution(10, 85, 90);
  print(result);
}

int solution(int X, int Y, int D) {
  if (X >= Y) return 0;
  final distance = Y - X;
  return (distance / D).ceil();
}
