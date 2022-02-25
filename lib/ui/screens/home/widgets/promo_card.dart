import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:glosh/common/themes/theme.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 100.0,
            enableInfiniteScroll: false,
            viewportFraction: 0.9,
          ),
          itemCount: 2,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Card(
              color: lightSeaGreenColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'See All Promotion',
                style: TextStyle(
                    color: lightSeaGreenColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 11),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
