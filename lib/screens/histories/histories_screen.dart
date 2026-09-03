import 'package:flutter/material.dart';

class HistoriesScreen extends StatelessWidget {
  const HistoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histories'),
      ),
      body: const Center(
        child: Text('Histories Screen'),
      ),
    );
  }
}
