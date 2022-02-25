import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glosh/common/routes/route_name.dart';
import 'package:glosh/common/themes/theme.dart';
import 'package:glosh/ui/widgets/custom/image_view.dart';

class MyShopScreen extends StatelessWidget {
  const MyShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreenColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'My Shop',
          style: regularTextStyle.copyWith(
              color: whiteColor, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: tealColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Column(
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
                                        style: regularTextStyle.copyWith(
                                            fontSize: 13),
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
                                        style: regularTextStyle.copyWith(
                                            fontSize: 13),
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
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: whiteColor,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sales',
                            style: header2TxtStyle,
                          ),
                          Text(
                            'History',
                            style: regularTextStyle.copyWith(
                              color: lightSeaGreenColor,
                              fontSize: 13,
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
                          Container(
                            width: 120,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: lightSeaGreenColor),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                          ),
                          Container(
                            width: 120,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: lightSeaGreenColor),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: whiteColor,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your Product',
                            style: header2TxtStyle,
                          ),
                          InkWell(
                            onTap: () =>
                                Get.toNamed(RouteName.productAdminRoute),
                            child: Text(
                              'See all',
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Card(
                                color: darkSeaGreenColor,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 30),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        'Add Product',
                                        style: header2TxtStyle.copyWith(
                                            color: whiteColor),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      SizedBox(
                                        height: 55,
                                        width: 74,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            padding: const EdgeInsets.all(2),
                                            primary: lightGreenColor,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: Icon(
                                            Icons.add,
                                            size: 35,
                                            color: darkSeaGreenColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 10,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 133,
                                        height: 122,
                                        child: ImageView(
                                            urlImage: 'urlImage',
                                            width: 133,
                                            height: 122),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'itemProduct.title',
                                        style: CardStyle.titleTxtstyle,
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'itemProduct.desc',
                                        style: CardStyle.descTxtstyle,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '1',
                                            style: CardStyle.priceTxtstyle,
                                          ),
                                          SizedBox(
                                            width: 70,
                                          ),
                                          SizedBox(
                                            height: 38,
                                            width: 51,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                padding:
                                                    const EdgeInsets.all(2),
                                                primary: darkSeaGreenColor,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(19),
                                                ),
                                              ),
                                              onPressed: () {},
                                              child: Icon(
                                                Icons.delete_outline,
                                                size: 20,
                                                color: whiteColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
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
                      Divider(),
                      Row(
                        children: [
                          Icon(
                            Icons.reviews_outlined,
                            color: darkSeaGreenColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Reviews',
                            style: regularTextStyle.copyWith(
                                fontSize: 13, color: lightSeaGreenColor),
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Icon(
                            Icons.question_answer_outlined,
                            color: darkSeaGreenColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Discussions',
                            style: regularTextStyle.copyWith(
                                fontSize: 13, color: lightSeaGreenColor),
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Icon(
                            Icons.report_problem_outlined,
                            color: darkSeaGreenColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Complaints',
                            style: regularTextStyle.copyWith(
                                fontSize: 13, color: lightSeaGreenColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
