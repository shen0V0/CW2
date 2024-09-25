import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String ingredients;
  final String instructions;

  const DetailsScreen({
    super.key,
    required this.title,
    required this.ingredients,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(126, 63, 185, 238), // Set background color for the whole page
      child: Scaffold(
        backgroundColor: Colors.transparent, // Make Scaffold transparent
        appBar: AppBar(
          title: Text(title),
          backgroundColor: const Color.fromARGB(157, 24, 42, 160),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ingredients:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(ingredients, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 16),
              const Text(
                'Instructions:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(instructions, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
