part of '../../../screen.dart';

class BuyerShop extends StatelessWidget {
  const BuyerShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MenuBuyer> _menuBuyer = [
      MenuBuyer(
          icon: Icon(
            Icons.reviews_outlined,
            color: darkSeaGreenColor,
          ),
          menu: 'Reviews'),
      MenuBuyer(
          icon: Icon(
            Icons.question_answer_outlined,
            color: darkSeaGreenColor,
          ),
          menu: 'Discussions'),
      MenuBuyer(
          icon: Icon(
            Icons.report_problem_outlined,
            color: darkSeaGreenColor,
          ),
          menu: 'Complaints'),
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Buyer',
            style: header2TxtStyle,
          ),
          SizedBox(
            height: 5,
          ),
          Column(
              children: _menuBuyer.map((menu) {
            return Column(
              children: [
                Divider(),
                Row(
                  children: [
                    menu.icon,
                    SizedBox(width: 10),
                    Text(
                      menu.menu,
                      style: regularTextStyle.copyWith(
                          fontSize: 13, color: lightSeaGreenColor),
                    )
                  ],
                ),
              ],
            );
          }).toList()),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}

class MenuBuyer {
  Icon icon;
  String menu;

  MenuBuyer({required this.icon, required this.menu});
}
