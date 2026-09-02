import 'package:flutter_riverpod/legacy.dart';

final multiplierProvider = StateProvider.family<int, Map<String, dynamic>>((
  ref,
  multiplier,
) {
  return multiplier["id"] * 6;
});
