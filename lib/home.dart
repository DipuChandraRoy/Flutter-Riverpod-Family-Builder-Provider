import 'package:family_bilder_provider/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Map<String, dynamic> map = {"id": 5};
    final multiplier = ref.watch(multiplierProvider(map));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Provider Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Multiplier Result: $multiplier',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
