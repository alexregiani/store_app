import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(50, (i) => i);
    print(items);
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: Text('Item $item'),
              subtitle: Text('description'),
              trailing: Icon(Icons.arrow_circle_right_outlined),
            );
          },
        ));
  }
}
