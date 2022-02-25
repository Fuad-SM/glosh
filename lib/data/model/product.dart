class Product {
  String title;
  String desc;
  String price;
  String cart;
  String image;

  Product({
    required this.title,
    required this.desc,
    required this.price,
    required this.cart,
    required this.image,
  });
}

List<Product> product = [
  Product(
      title: 'Red Apple',
      desc: '1kg, priceg',
      price: r'$1.99',
      cart: '1kg, 2-3 pcs',
      image: 'apple.png'),
  Product(
      title: 'Yellow Banana',
      desc: '1kg, priceg',
      price: r'$0.99',
      cart: '1kg, 1 pcs',
      image: 'banana.png'),
  Product(
      title: 'Red Paprika',
      desc: '1kg, priceg',
      price: r'$0.99',
      cart: '1kg, 2-3 pcs',
      image: 'paprika.png'),
  Product(
      title: 'Ginger',
      desc: '1kg, priceg',
      price: r'$0.99',
      cart: '1kg, 2-3 pcs',
      image: 'ginger.png'),
  Product(
      title: 'Beef meat',
      desc: '1kg, priceg',
      price: r'$2.99',
      cart: '1kg, 2-3 pcs',
      image: 'meat.png'),
  Product(
      title: 'Chicken (whole)',
      desc: '1kg, priceg',
      price: r'$1.99',
      cart: '1kg, 2-3 pcs',
      image: 'chicken.png'),
];
