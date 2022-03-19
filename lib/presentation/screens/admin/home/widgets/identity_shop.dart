part of '../../../screen.dart';

class IdentityShop extends StatelessWidget {
  const IdentityShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.account_circle,
                size: 60,
                color: Colors.blueGrey[300],
              ),
              backgroundColor: whiteColor,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Nama Toko',
                        style: header2TxtStyle.copyWith(
                          color: darkSeaGreenColor,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.verified_outlined,
                        color: darkSeaGreenColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.stars_outlined,
                        color: lightGreyColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '100 Followers',
                        style: regularTextStyle.copyWith(fontSize: 13),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.insights,
                        color: lightGreyColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '100 Visits per day',
                        style: regularTextStyle.copyWith(fontSize: 13),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        DottedBorder(
          color: Colors.grey.shade400,
          dashPattern: [10, 14],
          padding: EdgeInsets.all(0),
          child: Container(),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Open transaction since 14 January 2013',
          style: regularTextStyle.copyWith(
              color: lightSeaGreenColor, fontSize: 12),
        )
      ],
    );
  }
}
