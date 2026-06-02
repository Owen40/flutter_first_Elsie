import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First App',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.green)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First App',
          style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 1.5),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Product Name',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const Text(
              'This is the description of my product',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'This is the comments that the customers have given for this product. Basically the reviews',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.home, size: 30),
                SizedBox(width: 20),
                Icon(
                  Icons.favorite_outline,
                  size: 30,
                  color: Colors.lightGreen,
                ),
                SizedBox(width: 20),
                Icon(Icons.settings, size: 30),
              ],
            ),
            const SizedBox(height: 25.0),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Outlined textfield',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Email Address',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'john.doe@email.com',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Button Pressed')));
                // print('Button pressed');
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
