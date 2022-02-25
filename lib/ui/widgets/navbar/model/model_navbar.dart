import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Navbar {
  Icon icon;
  String text;

  Navbar({required this.icon, required this.text});
}

final List<Navbar> navbar = [
  Navbar(icon: Icon(Iconsax.home), text: 'Home'),
  Navbar(icon: Icon(Iconsax.shopping_bag), text: 'My Cart'),
  Navbar(icon: Icon(Iconsax.wallet), text: 'Deals'),
  Navbar(icon: Icon(Iconsax.shop), text: 'My Shop'),
];
