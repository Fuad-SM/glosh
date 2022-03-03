part of '../../screen.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List _mocking = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Column(children: [
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) => SizedBox(
                          height: 100,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: lightGreenColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Header',
                                        style: headerTxtStyle,
                                      ),
                                      Text(
                                        'Subhead',
                                        style: regularTextStyle,
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
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
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: _mocking.length)
              ]),
            ),
          ),
        ),
        Container(
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
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${_mocking.length}',
                          style: headerTxtStyle,
                        ),
                        TextSpan(
                          text: ' Categories found',
                          style: regularTextStyle.copyWith(
                            color: greyColor,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: MediaQuery.of(context).size.height * 0.068,
                  child: ElevatedButton(
                    onPressed: () {},
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
                          'Add Category',
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
        ),
      ],
    );
  }
}
