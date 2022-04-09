import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:glosh/core/app_environment.dart';
import 'package:glosh/core/core.dart';
import 'package:glosh/core/utils/constanta.dart';
import 'package:glosh/data/controller/getx_controller.dart';
import 'package:glosh/data/repositories/repository.dart';
import 'package:glosh/presentation/animation/stagered_animation.dart';
import 'package:glosh/presentation/widgets/component.dart';
import 'package:glosh/presentation/routes/getx_route.dart';
import 'package:glosh/presentation/themes/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

// Started
part 'general/start/started_screen.dart';
part 'general/start/controller/started_controller.dart';

// GetStarted
part 'general/getstarted/getstarted_screen.dart';
part 'general/getstarted/controller/getstart_controller.dart';

// Login
part 'general/login/controller/login_controller.dart';
part 'general/login/login_screen.dart';

// Sign Up
part 'general/signup/controller/signup_controller.dart';
part 'general/signup/widgets/password_validation.dart';
part 'general/signup/signup_screen.dart';

// Part User

// Home
part 'user/home/widgets/deliver_card.dart';
part 'user/home/widgets/home_appbar.dart';
part 'user/home/widgets/menu_card.dart';
part 'user/home/widgets/promo_card.dart';
part 'user/home/home_pages.dart';

// Product User
part 'user/product_user/product_user_screen.dart';

// Cart
part 'user/cart/controller/cart_controller.dart';
part 'user/cart/widgets/cart_card.dart';
part 'user/cart/widgets/custom_checkbox.dart';
part 'user/cart/cart_screen.dart';

// CheckOut
part 'user/checkout/widgets/checkout_card.dart';
part 'user/checkout/widgets/checkout_container.dart';
part 'user/checkout/widgets/custom_outlined_btn.dart';
part 'user/checkout/checkout_pages.dart';

// Profile
part 'user/profile/profile_pages.dart';
part 'user/profile/controller/profile_controller.dart';
part 'user/profile/widgets/modal_bottom_profile.dart';

// Invalid Pages
part 'invalid_pages.dart';

// Detail Book
part 'user/detail/detail_book.dart';
part 'user/detail/widgets/bottom_bar_detail.dart';
part 'user/detail/widgets/detail_appbar.dart';
part 'user/detail/controller/detail_controller.dart';

// Part Admin

// Home
part 'admin/home/home_admin_screen.dart';
part 'admin/home/widgets/buyer_shop.dart';
part 'admin/home/widgets/identity_shop.dart';
part 'admin/home/widgets/product_shop.dart';
part 'admin/home/widgets/purchase_history.dart';

// Product
part 'admin/product_admin/product_admin_screen.dart';
part 'admin/product_admin/controller/modal_bottom_controller.dart';
part 'admin/product_admin/controller/product_admin_controller.dart';
part 'admin/product_admin/widgets/collection/bottom_bar_collection.dart';
part 'admin/product_admin/widgets/collection/card_collection.dart';
part 'admin/product_admin/widgets/collection/modal_bottom_collection.dart';
part 'admin/product_admin/widgets/product/bottom_bar_product.dart';
part 'admin/product_admin/widgets/product/card_product.dart';
