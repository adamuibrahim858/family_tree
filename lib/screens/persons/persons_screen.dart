import 'package:flutter/material.dart';

class PersonsScreen extends StatelessWidget {
  const PersonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persons'),
      ),
      body: const Center(
        child: Text('Persons Screen'),
      ),
    );
  }
}
