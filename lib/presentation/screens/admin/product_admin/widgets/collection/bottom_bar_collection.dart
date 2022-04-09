part of '../../../../screen.dart';

class BottomBarCategory extends StatelessWidget {
  const BottomBarCategory({required this.controller, Key? key})
      : super(key: key);
  final CollectionAdminController controller;

  @override
  Widget build(BuildContext context) {
    final modal = Get.put(CategoryAddController());
    return Container(
      width: Get.width,
      height: Get.height * 0.09,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Row(
          children: [
            Expanded(
              child: _customText(
                text: '${controller.collectionAdmin.collections!.length}',
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.3,
              height: MediaQuery.of(context).size.height * 0.068,
              child: ElevatedButton(
                onPressed: () {
                  modal.clear();
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                            right: 35,
                            left: 35,
                          ),
                          child: CategoryAddModal(),
                        ),
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: darkSeaGreenColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Add Collection',
                      style: headerTxtStyle.copyWith(
                          fontSize: 14,
                          color: whiteColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.add,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  RichText _customText({required String text}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: headerTxtStyle,
          ),
          TextSpan(
            text: '  Collections found',
            style: regularTextStyle.copyWith(
              color: greyColor,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
