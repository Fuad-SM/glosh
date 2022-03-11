import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:glosh/common/animation/stagered_animation.dart';
import 'package:glosh/common/routes/route_name.dart';
import 'package:glosh/common/themes/theme.dart';
import 'package:glosh/data/controller/book_category_controller.dart';
import 'package:glosh/data/controller/firestorage_controller.dart';
import 'package:glosh/data/model/const.dart';
import 'package:glosh/data/model/product.dart';
import 'package:glosh/ui/widgets/widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

// GetStarted
part 'getstarted/getstarted_screen.dart';
part 'getstarted/controller/getstart_controller.dart';

// Login
part 'login/controller/login_controller.dart';
part 'login/login_screen.dart';

// Sign Up
part 'signup/controller/signup_controller.dart';
part 'signup/widgets/password_validation.dart';
part 'signup/signup_screen.dart';

// Home
part 'home/widgets/deliver_card.dart';
part 'home/widgets/home_appbar.dart';
part 'home/widgets/menu_card.dart';
part 'home/widgets/promo_card.dart';
part 'home/home_pages.dart';

// Product User
part 'product_user/product_pages.dart';

// Cart
part 'cart/controller/cart_controller.dart';
part 'cart/widgets/cart_card.dart';
part 'cart/widgets/custom_checkbox.dart';
part 'cart/cart_screen.dart';

// CheckOut
part 'checkout/widgets/checkout_card.dart';
part 'checkout/widgets/checkout_container.dart';
part 'checkout/widgets/custom_outlined_btn.dart';
part 'checkout/checkout_pages.dart';

// MyShop
part 'myshop/widgets/buyer_shop.dart';
part 'myshop/widgets/identity_shop.dart';
part 'myshop/widgets/product_shop.dart';
part 'myshop/widgets/purchase_history.dart';
part 'myshop/myshop_screen.dart';

// Product Admin
part 'product_admin/product_admin.dart';
part 'product_admin/controller/product_admin_controller.dart';
part 'product_admin/controller/modal_bottom_controller.dart';
part 'product_admin/widgets/product/card_product.dart';
part 'product_admin/widgets/product/bottom_bar_product.dart';
part 'product_admin/widgets/category/modal_bottom_category.dart';
part 'product_admin/widgets/category/card_category.dart';
part 'product_admin/widgets/category/bottom_bar_category.dart';

// Invalid Pages

part 'invalid_pages.dart';
