import 'dart:io';

void main() {
  print('Enter expense amounts separated by spaces:');
  final line = stdin.readLineSync();
  if (line == null || line.trim().isEmpty) {
    print('Total: 0.0');
    return;
  }
  final parts = line.trim().split(RegExp(r'\s+'));
  double total = 0.0;
  for (final p in parts) {
    final v = double.tryParse(p);
    if (v != null) total += v;
  }
  print('Total: $total');
}
