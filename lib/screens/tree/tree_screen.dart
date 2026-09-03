import 'package:flutter/material.dart';

class TreeScreen extends StatelessWidget {
  const TreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Tree'),
      ),
      body: const Center(
        child: Text('Tree Screen'),
      ),
    );
  }
}
