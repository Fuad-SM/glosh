part of '../../screen.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: menu.length,
          itemBuilder: (context, index) {
            var menuChoice = menu[index];
            return InkWell(
              onTap: index == 0
                  ? () => Get.toNamed(RouteName.productRoute)
                  : () {},
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: lightSeaGreenColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    menuChoice,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
