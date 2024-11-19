import 'dart:math';

List<E> randomShuffle<E>(List<E> list) {
  final result = List<E>.from(list);

  for (int i = result.length - 1; i > 0; i--) {
    final randomIndex = Random().nextInt(i + 1);
    final temp = result[i];
    result[i] = result[randomIndex];
    result[randomIndex] = temp;
  }

  return result;
}
