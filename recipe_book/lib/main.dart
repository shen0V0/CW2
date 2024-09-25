import 'package:flutter/material.dart';
import 'Detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Favorite Recipes'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  // List of recipes
  final List<Map<String, String>> recipes = [
    {
      'title': 'Vegetable Stir-Fry',
      'ingredients': '1 ripe avocado\n1 tbsp soy sauce\n1 clove garlic, minced\n1 tsp sesame oil\n1 tsp sesame seeds (optional)',
      'instructions': '1. Heat oil in a pan over medium heat.\n2. Add garlic and stir for 1 minute.\n3. Toss in the vegetables and stir-fry for 5–7 minutes until tender.\n4. Add soy sauce and mix well.\n5. Sprinkle sesame seeds on top (optional) and serve with rice or noodles.'
    },
    {
      'title': 'Greek Yogurt Parfait',
      'ingredients': '1 cup Greek yogurt\n1/4 cup granola\n1/2 cup mixed berries\nHoney (optional)',
      'instructions': '1. Layer the Greek yogurt in a bowl or glass.\n2. Add granola and mixed berries.\n3. Drizzle with honey if desired.'
    },
    {
      'title': 'Peanut Butter Banana Smoothie',
      'ingredients': '1 banana\n1 tbsp peanut butter\n1 cup milk (or almond milk)\n1/4 cup yogurt (optional)\nIce cubes',
      'instructions': '1. Combine all ingredients in a blender.\n2. Blend until smooth.\n3. Pour into a glass and enjoy!'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Center(
                child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            title: recipes[index]['title']!,
                            ingredients: recipes[index]['ingredients']!,
                            instructions: recipes[index]['instructions']!,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: Text(recipes[index]['title']!),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
