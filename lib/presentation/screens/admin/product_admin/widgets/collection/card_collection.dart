part of '../../../../screen.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({required this.controller, Key? key}) : super(key: key);
  final CollectionAdminController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            children: [
              _generateCard(controller),
            ],
          ),
        ),
      ),
    );
  }

  _generateCard(CollectionAdminController controller) {
    final categoryController = Get.put(CategoryAddController());
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      separatorBuilder: (context, index) {
        return SizedBox(height: 10);
      },
      itemCount: controller.collectionAdmin.collections!.length,
      itemBuilder: (context, index) {
        var collection = controller.collectionAdmin.collections![index];
        return SizedBox(
          height: 100,
          child: Dismissible(
            key: ValueKey(collection),
            direction: DismissDirection.endToStart,
            confirmDismiss: (DismissDirection direction) async {
              return await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(
                      "Delete Confirmation",
                      // style: logoTextStyle,
                    ),
                    content: Text(
                      "Are you sure you want to delete this item?",
                      // style: greyTextStyle,
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () async {
                          await controller.deleteCollection(id: collection.id!);
                          Navigator.of(context).pop(true);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text(
                                  'You subtracted in favorite list!'),
                              width: 208,
                              padding: const EdgeInsets.all(10),
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          );
                          controller.fetchAllCollection();
                        },
                        child: Text(
                          "Delete",
                          // style: yellowTextStyle,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: Text(
                          "Cancel",
                          // style: yellowTextStyle,
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            collection.title!,
                            style: headerTxtStyle,
                          ),
                          SizedBox(height: 5),
                          Text(
                            collection.handle!,
                            style: regularTextStyle.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        categoryController.fetchCollectionById(
                            id: collection.id!);
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
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom,
                                  right: 35,
                                  left: 35,
                                ),
                                child: CategoryAddModal(id: collection.id!),
                              ),
                            );
                          },
                        );
                      },
                      splashRadius: 24,
                      visualDensity: VisualDensity.compact,
                      icon: Icon(
                        Icons.edit,
                        color: darkSeaGreenColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
