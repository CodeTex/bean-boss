import 'package:flutter/material.dart';
import '../models/coffee.dart';
import '../services/mock_coffee_service.dart';
import '../widgets/coffee_card.dart';

class MenuScreen extends StatelessWidget {
  final List<Coffee> coffees = MockCoffeeService.getCoffeeList();

  MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Menu'),
      ),
      body: ListView.builder(
        itemCount: coffees.length,
        itemBuilder: (context, index) {
          return CoffeeCard(coffee: coffees[index]);
        },
      ),
    );
  }
}
