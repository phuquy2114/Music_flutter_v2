import 'package:intl/intl.dart';

/// https://gist.github.com/terrancesnyder/1345094
extension StringValidator on String {
  bool isValidEmail() {
    return RegExp(r'^[\w-\.+]+@([\w-]+\.)+[\w-]{1,50}$').hasMatch(this);
  }

  bool hasSpecialCharacter() {
    //@ % \ / ' + ! # $ ^ ? : ( ) { } [ ] ~ ` - _ .
    return RegExp(r'[!@#$%^&*+()\[\]\\/,.?":~`{}_-]').hasMatch(this) || RegExp(r"[']").hasMatch(this);
  }

  bool furiganaCharacter() {
    return RegExp(r'^([ぁ-んァ-ン]|　|ー)+$').hasMatch(this);
  }

  bool hasUppercase() => contains(RegExp(r'[A-Z]'));

  bool hasLowercase() => contains(RegExp(r'[a-z]'));

  bool hasNumber() => contains(RegExp(r'[0-9]'));

  bool isValidPassword() => hasLowercase() && hasUppercase() && hasNumber() && length > 7;

  bool isHalfSize() {
    return RegExp(r'^[a-zA-Z0-9!@#$%^&*+()\[\]\\/,.?":~`{}_-]+$').hasMatch(this);
  }

  String removeSpace() {
    return replaceAll(RegExp(r'\s'), '');
  }

  DateTime stringToDate() {
    DateTime convertTime;
    try {
      convertTime = DateFormat("yyyy/MM/dd HH:mm:ss").parse(this, false);
    } catch (exception) {
      try {
        convertTime = DateFormat("yyyy/MM/dd HH:mm").parse(this, false);
      } catch (exception) {
        convertTime = DateFormat("yyyy/MM/dd").parse(this, false);
      }
    }
    return convertTime;
  }

  DateTime stringToDateForEventApplication() {
    DateTime convertTime;
    try {
      convertTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(this, false);
    } catch (exception) {
      try {
        convertTime = DateFormat("yyyy-MM-dd HH:mm").parse(this, false);
      } catch (exception) {
        convertTime = DateFormat("yyyy-MM-dd").parse(this, false);
      }
    }
    return convertTime;
  }

  DateTime stringToDateForEventPageTop() {
    return DateFormat("yyyy-MM-dd HH:mm:ss").parse("$this 23:59:59", false);
  }

  DateTime stringToDateTicketActive() {
    return DateFormat("yyyy-MM-dd HH:mm:ss").parse("$this 00:00:00", false);
  }

  DateTime toDateTimeYyyyMMdd() {
    return DateFormat("yyyy/MM/dd").parse(this);
  }

  DateTime toDateTimeYyyyMd() {
    return DateFormat("yyyy/M/d").parse(this);
  }

  String stringToJapanMonthDayFormat() {
    DateTime convertTime;
    try {
      convertTime = DateFormat("yyyy/MM/dd").parse(this);
      return DateFormat('MM月dd日').format(convertTime);
    } catch (exception) {
      return this;
    }
  }

  String toVideoTime() {
    String input = this;
    if (contains("H") && contains("M") && !contains("S")) {
      input = this + "00S";
    } else if (contains("H") && !contains("M") && !contains("S")) {
      input = this + "00M00S";
    } else if (!contains("H") && contains("M") && !contains("S")) {
      input = this + "00S";
    } else if (!contains("H") && !contains("M") && contains("S")) {
      input = "00M" + this;
    }
    String? result = input.replaceAll("PT", "").replaceAll("H", ":").replaceAll("M", ":").replaceAll("S", "");
    var arrayResult = result.split(":");
    String data = "";
    for (int i = 0; i < arrayResult.length; i++) {
      if (arrayResult[i].length <= 2) {
        if (arrayResult[i].length < 2) {
          if (i == arrayResult.length - 1) {
            arrayResult[i] = "0" + arrayResult[i];
          } else {
            arrayResult[i] = "0" + arrayResult[i] + ":";
          }
        } else if (i != arrayResult.length - 1) {
          arrayResult[i] = arrayResult[i] + ":";
        }
      }
      data = data + arrayResult[i];
    }
    data.replaceRange(data.length - 1, data.length, "");
    if (data.length <= 2) {
      data = "0:" + data;
    }

    return data;
  }

  String convertPostCode() {
    return replaceAllMapped(RegExp(r'(\d{3})(\d{4})'), (Match m) => "${m[1]}-${m[2]}");
  }
}
