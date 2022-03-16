part of 'core.dart';

enum ResultState { Loading, Idle, NoData, HasData, Error }

class ResultStateAlert {
  static loading(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        child: LoadingIndicator(
          indicatorType: Indicator.circleStrokeSpin,
          colors: [
            lightSeaGreenColor,
          ],
          strokeWidth: 2,
        ),
      ),
    );
  }

  static noData(String message) {
    return Center(
      child: Text(message, style: regularTextStyle),
    );
  }

  static error(String message) {
    return Center(
      child: Column(
        children: [
          Lottie.asset(
            'assets/json/error.json',
            width: Get.width / 2,
          ),
          Text(message, style: regularTextStyle),
        ],
      ),
    );
  }
}
