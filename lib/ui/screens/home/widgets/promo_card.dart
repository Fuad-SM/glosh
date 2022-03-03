part of '../../screen.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.13,
          child: CarouselSlider(
            options: CarouselOptions(
              height: 120.0,
              enableInfiniteScroll: true,
              viewportFraction: 1,
              autoPlay: true,
            ),
            items: promo.map((image) {
              return Builder(builder: (BuildContext context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 1.13,
                  height: 120,
                  child: Image.asset(
                    'assets/images/$image.jpg',
                    fit: BoxFit.cover,
                  ),
                );
              });
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'See All Promotion',
                style: TextStyle(
                    color: darkSeaGreenColor,
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
