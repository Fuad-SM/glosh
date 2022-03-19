part of '../../core.dart';

// convert currency indo
String get currency =>
    NumberFormat.compactSimpleCurrency(locale: 'id').currencySymbol;
String converToIndonesianCurrency(int s) {
  return NumberFormat.decimalPattern('id').format(s);
}

// convert to date indo
String convertToIndonesianDate(DateTime time) {
  var formatter = new DateFormat('HH:mm | dd-MMMM-yyyy', 'id_ID');
  String formatted = formatter.format(time);
  return formatted;
}

// convert to date indo short
String convertToIndonesianDateShort(DateTime time) {
  var formatter = new DateFormat('dd-MMMM-yyyy', 'id_ID');
  String formatted = formatter.format(time);
  return formatted;
}

// convert to date indo
String convertToChatTime(DateTime time) {
  var formatter = new DateFormat('HH:mm', 'id_ID');
  String formatted = formatter.format(time);
  return formatted;
}

// convert cookie to String
String convertCookieToString(List<Cookie> cookie) {
  var convertToListString = cookie.map((e) => e.toString()).toList();
  var getCookie = convertToListString[0].toString().split(' ');
  var convertToString = getCookie[0].split('');
  convertToString.removeLast();
  return convertToString.join();
}
