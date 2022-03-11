part of '../screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tealColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Fresh Produce',
          style: regularTextStyle.copyWith(
              color: whiteColor, fontWeight: FontWeight.w600),
        ),
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            GetBuilder<BookCategoryController>(
              builder: (controller) {
                if (controller.state == ResultState.Loading) {
                  return CircularProgressIndicator();
                } else if (controller.state == ResultState.HasData) {
                  return Text(controller.bookCategory[1].name);
                } else if (controller.state == ResultState.Error) {
                  return Text(controller.message);
                } else {
                  return SizedBox();
                }
              },
            ),
            ProductCardUser(),
          ],
        ),
      ),
    );
  }
}
