import 'package:flutter/material.dart';

class DocumentariesScreen extends StatelessWidget {
  const DocumentariesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Documentaries'),
      ),
      body: const Center(
        child: Text('Documentaries Screen'),
      ),
    );
  }
}
