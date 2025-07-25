import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_tile.dart';
import 'checkout_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        name: 'Palm Plant',
        price: 12.99,
        imageUrl:'https://images.unsplash.com/photo-1601985705806-5b9a71f6004f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGxhbnRzfGVufDB8fDB8fHww',
        description: 'Beautiful indoor palm plant in a yellow pot.',
      ),
      Product(
        name: 'Small Tree',
        price: 14.99,
        imageUrl: 'https://plus.unsplash.com/premium_photo-1682542226584-e776098d5ea9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c21hbGwlMjB0cmVlfGVufDB8fDB8fHww',
        description: 'A lovely small tree perfect for decorating your space.',
      ),
      Product(
        name: 'White Flower',
        price: 10.99,
        imageUrl: 'https://images.unsplash.com/photo-1527338656996-ea4014daa5f4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8J1doaXRlJTIwRmxvd2VyJ3xlbnwwfHwwfHx8MA%3D%3D',
        description:'Elegant white flowers that bring life to your room.',
      ),
      Product(
        name: 'Cactus Plant',
        price: 9.49,
        imageUrl: 'https://images.unsplash.com/photo-1519336056116-bc0f1771dec8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Q2FjdHVzJTIwUGxhbnR8ZW58MHx8MHx8fDA%3D',
        description: 'Low-maintenance cactus in a stylish pot.',
      ),
      Product(
        name: 'Snake Plant',
        price: 11.99,
        imageUrl: 'https://images.unsplash.com/photo-1593482892540-73c9199d8949?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8U25ha2UlMjBQbGFudHxlbnwwfHwwfHx8MA%3D%3D',
        description: 'Tall and strong snake plant, purifies air.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CheckoutPage()),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 320,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: ProductTile(product: products[index]),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${products[index].name} added to cart"),
                      ),
                    );
                  },
                  child: const Text("Add to Cart"),
                ),
              )
            ],
          );
        },
      ),
    );
  }
} 
