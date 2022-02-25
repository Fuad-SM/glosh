import 'package:flutter/material.dart';
import 'package:glosh/common/themes/theme.dart';
import 'package:glosh/ui/widgets/custom/image_view.dart';

class ProductAdmin extends StatelessWidget {
  const ProductAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Your Product',
          style: regularTextStyle.copyWith(
              color: whiteColor, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: tealColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Product',
                    style: header2TxtStyle,
                  ),
                  Text(
                    '120 Products',
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
                            style: header2TxtStyle.copyWith(color: whiteColor),
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
                                  borderRadius: BorderRadius.circular(100),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 133,
                            height: 122,
                            child: ImageView(
                                urlImage: 'urlImage', width: 133, height: 122),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    padding: const EdgeInsets.all(2),
                                    primary: darkSeaGreenColor,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(19),
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
            ],
          ),
        ),
      ),
    );
  }
}
