import 'package:flutter/material.dart';
import 'package:store_app/details_page.dart';

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
              onTap: () => showDetailPage(context),
              title: Text('Item $item'),
              subtitle: Text('description'),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
            );
          },
        ));
  }
}

showDetailPage(context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailsPage(),
    ),
  );
}
