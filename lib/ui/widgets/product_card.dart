import 'package:flutter/material.dart';
import 'package:glosh/common/themes/theme.dart';
import 'package:glosh/data/model/product.dart';
import 'package:glosh/ui/widgets/custom/image_view.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 15,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.3),
      ),
      itemCount: product.length,
      itemBuilder: (context, index) {
        Product itemProduct = product[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 133,
                  height: 122,
                  child:
                      ImageView(urlImage: 'urlImage', width: 133, height: 122),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  itemProduct.title,
                  style: CardStyle.titleTxtstyle,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  itemProduct.desc,
                  style: CardStyle.descTxtstyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      itemProduct.price,
                      style: CardStyle.priceTxtstyle,
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
                          Icons.add,
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
        );
      },
    );
  }
}
