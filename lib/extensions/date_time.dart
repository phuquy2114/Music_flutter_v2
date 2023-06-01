import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String format(DateFormat format) {
    return format.format(this);
  }

  String paramFormatDateTime() {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String formatDateTime() {
    return DateFormat('yyyy/MM/dd HH:mm').format(this);
  }

  String formatDateTimeJa() {
    return DateFormat('yyyy年MM月dd日 HH:mm').format(this);
  }

  String formatDateJa() {
    return DateFormat('yyyy年MM月dd日').format(this);
  }

  String formatDateYYYYMDJa() {
    return DateFormat('yyyy年M月d日').format(this);
  }

  String formatDateWithWeekdays() {
    return "${DateFormat('MM/dd').format(this)}(${weekdayJa()})";
  }

  String formatDateTimeWithWeekdays() {
    return "${DateFormat('M/d').format(this)}(${weekdayJa()}) ${DateFormat('HH:mm').format(this)}";
  }

  String formatDateJaWithWeekdays() {
    return "${DateFormat('yyyy年MM月dd日').format(this)}(${weekdayJa()})";
  }

  String formatTime() {
    return DateFormat('HH:mm').format(this);
  }

  String weekdayJa() {
    final weekdays = ['月', '火', '水', '木', '金', '土', '日'];
    return weekdays[weekday - 1];
  }

  String formatDate() {
    return DateFormat('yyyy/MM/dd').format(this);
  }

  String formatDateServer() {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String formatDateYYYYMMMMdEEEEJa() {
    return DateFormat("yyyy, MMMM d EEEE", "ja").format(this);
  }

  String formatDateTimeDayJa() {
    return "${DateFormat('yyyy年M月d日').format(this)}(${weekdayJa()})";
  }

  String toyyyyyMd() {
    return DateFormat("yyyy/M/d").format(this);
  }

  String formatMMdd() {
    return DateFormat('MM/dd').format(this);
  }

  String formatMMddWeekday() {
    return "${formatMMdd()}(${weekdayJa()})";
  }

  bool isSameDateYYYYMMDD(DateTime other) {
    String myDate = DateFormat("yyyy/MM/dd").format(this);
    String otherDate = DateFormat("yyyy/MM/dd").format(other);
    if (myDate == otherDate) {
      return true;
    }
    return false;
  }

  bool isDifferentMonthYYYYMMDD(DateTime other) {
    return month != other.month;
  }

  bool isChange(DateTime a, DateTime b) {
    return a.month != b.month || a.year != b.year;
  }

  bool isChangeCurrentDate(DateTime other) {
    return month != other.month || year != other.year;
  }

  String formatPublicTime(DateTime other) {
    if (month == other.month && year == other.year) {
      return "${formatDateJaWithWeekdays()}-${other.day}日(${other.weekdayJa()})";
    } else {
      return "${formatDateJaWithWeekdays()}~${other.formatDateJaWithWeekdays()}";
    }
  }
}
