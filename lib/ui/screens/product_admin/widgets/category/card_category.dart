part of '../../../screen.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<BookCategoryController>(
        builder: (controller) {
          if (controller.state == ResultState.Loading) {
            return CircularProgressIndicator();
          } else if (controller.state == ResultState.HasData) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Column(
                  children: [
                    _generateCard(controller),
                  ],
                ),
              ),
            );
          } else if (controller.state == ResultState.Error) {
            return Text(controller.message);
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }

  ListView _generateCard(BookCategoryController controller) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      separatorBuilder: (context, index) {
        return SizedBox(height: 10);
      },
      itemCount: controller.bookCategory.length,
      itemBuilder: (context, index) {
        var category = controller.bookCategory[index];
        return SizedBox(
          height: 100,
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
                          category.name,
                          style: headerTxtStyle,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Code: ${category.code}',
                          style: regularTextStyle.copyWith(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
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
                              child: CategoryAddModal(
                                id: category.id,
                              ),
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
        );
      },
    );
  }
}
