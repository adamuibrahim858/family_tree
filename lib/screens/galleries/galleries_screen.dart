import 'package:flutter/material.dart';

class GalleriesScreen extends StatelessWidget {
  const GalleriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galleries'),
      ),
      body: const Center(
        child: Text('Galleries Screen'),
      ),
    );
  }
}
