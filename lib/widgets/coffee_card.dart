import 'package:flutter/material.dart';
import '../models/coffee.dart';

class CoffeeCard extends StatelessWidget {
  final Coffee coffee;

  const CoffeeCard({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        child: ListTile(
          leading: SizedBox(
            width: 50, // Adjust the width as needed
            height: 50, // Adjust the height as needed
            child: Image.asset(
              coffee.imageUrl,
              fit: BoxFit
                  .cover, // This ensures the image covers the container without distortion
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                    'assets/images/placeholder.png'); // Placeholder image
              },
            ),
          ),
          title: Text(coffee.name),
          subtitle: Text(coffee.description),
          onTap: () {
            // Handle coffee selection
            print('Selected ${coffee.name}');
          },
        ),
      ),
    );
  }
}
