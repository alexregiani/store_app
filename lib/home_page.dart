import 'package:flutter/material.dart';
import 'package:store_app/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => pressButton(context),
          child: const Text('Press me'),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('myApp'),
      ),
    );
  }
}

pressButton(context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const DetailsPage(),
    ),
  );
}
