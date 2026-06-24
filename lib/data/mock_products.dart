import '../models/product.dart';

class MockProducts {
  static List<Product> getProducts() {
    return [
      Product(
        id: 'p1',
        name: 'Wireless Headphones',
        image: 'https://picsum.photos/seed/headphones/400/400',
        price: 5999.00,
        rating: 4.5,
        description:
        'Premium wireless headphones with active noise cancellation, '
            '30-hour battery life, and crystal-clear sound quality. '
            'Perfect for music lovers and professionals on the go.',
        category: 'Electronics',
      ),
      Product(
        id: 'p2',
        name: 'Smart Watch',
        image: 'https://picsum.photos/seed/smartwatch/400/400',
        price: 8999.00,
        rating: 4.3,
        description:
        'Track your fitness, heart rate, and sleep with this sleek '
            'smart watch. Water-resistant design with a 7-day battery life '
            'and customizable watch faces.',
        category: 'Electronics',
      ),
      Product(
        id: 'p3',
        name: 'Running Shoes',
        image: 'https://picsum.photos/seed/shoes/400/400',
        price: 4500.00,
        rating: 4.7,
        description:
        'Lightweight running shoes with breathable mesh fabric and '
            'responsive cushioning. Designed for comfort during long runs '
            'and daily wear.',
        category: 'Footwear',
      ),
      Product(
        id: 'p4',
        name: 'Backpack',
        image: 'https://picsum.photos/seed/backpack/400/400',
        price: 3200.00,
        rating: 4.2,
        description:
        'Durable and spacious backpack with padded laptop compartment, '
            'multiple pockets, and water-resistant fabric. Great for travel, '
            'work, or school.',
        category: 'Accessories',
      ),
      Product(
        id: 'p5',
        name: 'Coffee Maker',
        image: 'https://picsum.photos/seed/coffeemaker/400/400',
        price: 7500.00,
        rating: 4.4,
        description:
        'Brew the perfect cup every morning with this compact coffee '
            'maker. Features a programmable timer and keep-warm function.',
        category: 'Home',
      ),
      Product(
        id: 'p6',
        name: 'Sunglasses',
        image: 'https://picsum.photos/seed/sunglasses/400/400',
        price: 2100.00,
        rating: 4.0,
        description:
        'Stylish UV-protected sunglasses with a lightweight frame. '
            'A perfect accessory for sunny days and outdoor adventures.',
        category: 'Accessories',
      ),
      Product(
        id: 'p7',
        name: 'Bluetooth Speaker',
        image: 'https://picsum.photos/seed/speaker/400/400',
        price: 4200.00,
        rating: 4.6,
        description:
        'Portable Bluetooth speaker with rich bass, 12-hour playtime, '
            'and a waterproof design. Take your music anywhere.',
        category: 'Electronics',
      ),
      Product(
        id: 'p8',
        name: 'Yoga Mat',
        image: 'https://picsum.photos/seed/yogamat/400/400',
        price: 1800.00,
        rating: 4.1,
        description:
        'Non-slip, eco-friendly yoga mat with extra cushioning for '
            'comfort during workouts and stretching sessions.',
        category: 'Fitness',
      ),
    ];
  }
}