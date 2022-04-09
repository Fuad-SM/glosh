part of '../../screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customerC = Get.find<CustomerController>();
    return Scaffold(
      backgroundColor: lightGreenColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Icon(
                          Icons.account_circle,
                          size: 100,
                          color: Colors.blueGrey[300],
                        ),
                        backgroundColor: whiteColor,
                      ),
                      SizedBox(height: 10),
                      Obx(
                        () {
                          if (customerC.state == ResultState.Loading) {
                            return Column(
                              children: [
                                SizedBox(height: Get.height * 0.3),
                                ResultStateAlert.loading(context),
                              ],
                            );
                          } else if (customerC.state == ResultState.HasData) {
                            return Column(
                              children: [
                                Text(
                                  '${customerC.customer.customer!.firstName!} ${customerC.customer.customer!.lastName!}',
                                  style: headerTxtStyle,
                                ),
                                Text('Email'),
                                Text(customerC.customer.customer!.email!),
                                Text('Phone Number'),
                                Text(customerC.customer.customer!.phone!),
                                Text('Joined Date'),
                                Text(
                                  convertToIndonesianDateShort(
                                      customerC.customer.customer!.createdAt!),
                                ),
                              ],
                            );
                          } else if (customerC.state == ResultState.NoData) {
                            return Text(customerC.message);
                          } else if (customerC.state == ResultState.Error) {
                            return ResultStateAlert.error(customerC.message);
                          } else {
                            return SizedBox();
                          }
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                CustomElevatedBtn(
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
                              child: CategoryAddModal(),
                            ),
                          );
                        },
                      );
                    },
                    title: 'Change Information'),
                LogoutButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
