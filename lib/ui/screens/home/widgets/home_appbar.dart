import 'package:flutter/material.dart';
import 'package:glosh/common/themes/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions: [
        InkWell(
          child: Icon(Iconsax.heart),
        ),
        SizedBox(width: 15),
        InkWell(
          child: Icon(Iconsax.shopping_cart),
        ),
        SizedBox(width: 15),
      ],
      backgroundColor: tealColor,
      title: SizedBox(
        height: 40,
        child: GestureDetector(
          child: TextField(
            enabled: false,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              hintText: 'Search',
              hintStyle: GoogleFonts.poppins(
                fontSize: 13,
                color: const Color(0xffA6A1A1),
              ),
              filled: true,
              fillColor: whiteColor,
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  color: tealColor,
                  width: 0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
