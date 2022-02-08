import 'package:intl/intl.dart';

String customDateFormat(DateTime value) {
  return DateFormat('yyyy-MM-dd').format(value);
}
