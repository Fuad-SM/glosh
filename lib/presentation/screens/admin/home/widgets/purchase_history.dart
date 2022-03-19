part of '../../../screen.dart';

class PurchaseHistory extends StatelessWidget {
  const PurchaseHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sales',
              style: header2TxtStyle,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'History',
                style: regularTextStyle.copyWith(
                  color: lightSeaGreenColor,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _custContainer(
              onTap: () {},
              children: [
                Icon(
                  Icons.inventory,
                  color: darkSeaGreenColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'New Order',
                  style: regularTextStyle.copyWith(
                      color: lightSeaGreenColor, fontSize: 13),
                )
              ],
            ),
            _custContainer(
              onTap: () {},
              children: [
                Icon(
                  Icons.local_shipping_outlined,
                  color: darkSeaGreenColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ready to Deliver',
                  style: regularTextStyle.copyWith(
                      color: lightSeaGreenColor, fontSize: 12),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }

  Widget _custContainer({children, onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: lightSeaGreenColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
