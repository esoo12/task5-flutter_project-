import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Product 1 - \$12.99',
      'Product 2 - \$14.99',
      'Product 3 - \$10.99',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Check out"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(child: Text("${index + 1}")),
              title: Text(items[index]),
              trailing: const Icon(Icons.check_circle, color: Colors.green),
            ),
          );
        },
      ),
    );
  }
}
