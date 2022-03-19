part of '../../../screen.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favorite = Get.put(FavoriteButtonController());
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: whiteColor.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                visualDensity: VisualDensity.comfortable,
                onPressed: () => Get.back(),
                icon: Icon(
                  Icons.navigate_before,
                  color: blackColor,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: whiteColor.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Obx(
                () => favorite.isFavorite
                    ? IconButton(
                        visualDensity: VisualDensity.comfortable,
                        onPressed: () {
                          favorite.isFavorite = !favorite.isFavorite;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 600),
                              content: Text(
                                'You subtracted in favorite list!',
                                style: regularTextStyle.copyWith(
                                    color: whiteColor, fontSize: 13),
                              ),
                            ),
                          );
                        },
                        icon: Icon(Icons.favorite, color: Colors.red[300]),
                      )
                    : IconButton(
                        visualDensity: VisualDensity.comfortable,
                        onPressed: () {
                          favorite.isFavorite = !favorite.isFavorite;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Duration(milliseconds: 600),
                              content: Text(
                                'You added in favorite list!',
                                style: regularTextStyle.copyWith(
                                    color: whiteColor, fontSize: 13),
                              ),
                            ),
                          );
                        },
                        icon: Icon(Icons.favorite, color: Colors.black38),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
