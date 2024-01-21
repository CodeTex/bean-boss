import '../models/coffee.dart';

class MockCoffeeService {
  static List<Coffee> getCoffeeList() {
    return [
      Coffee(
        id: '1',
        name: 'Espresso',
        description: 'Strong and smooth',
        imageUrl: 'assets/images/espresso.png',
      ),
      Coffee(
        id: '2',
        name: 'Cappuccino',
        description: 'Creamy and rich',
        imageUrl: 'assets/images/cappuccino.png',
      ),
      Coffee(
        id: '3',
        name: 'Melange',
        description: 'Viennese classic',
        imageUrl: 'assets/images/melange.png',
      ),
      // Add more coffees as needed
    ];
  }
}
