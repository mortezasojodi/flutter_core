import 'package:core/extention/string_extention.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shamsi_date/shamsi_date.dart';

extension Extensions on TimeOfDay {
  String toTimeDay() => DatetimExtMethod.toTimeDay(this);
  Duration diffrence(TimeOfDay end) =>
      DatetimExtMethod.getTimeDifference(this, end);
}

extension Extension on DateTime {
  String toUtcVlm() {
    return DateFormat('yyyy-MM-dd\'T\'HH:mm:ss\'Z\'')
        .format(this)
        .georgianNumeric();
  }

  String toDateUtcVlm() {
    return DateFormat('yyyy-MM-dd').format(this).georgianNumeric();
  }

  String toDashTime() => DatetimExtMethod.toDashTime(this);
  String toDash() => DatetimExtMethod.toDash(this);
  String toTime() => DatetimExtMethod.toTime(this);
  String toJalaliSlash() => DatetimExtMethod.toJalaliSlash(this);
  String toYAndM() => DatetimExtMethod.toYAndM(this);
  String toDAndM() => DatetimExtMethod.toDAndM(this);
}

class DatetimExtMethod {
  static Duration getTimeDifference(TimeOfDay startTime, TimeOfDay endTime) {
    // Convert TimeOfDay to DateTime
    final now = DateTime.now();
    DateTime startDateTime = DateTime(
        now.year, now.month, now.day, startTime.hour, startTime.minute);
    DateTime endDateTime =
        DateTime(now.year, now.month, now.day, endTime.hour, endTime.minute);

    // Calculate the difference
    return endDateTime.difference(startDateTime);
  }

  static String toYAndM(DateTime dateTime) {
    // var jalali = dateTime.toJalali().formatter;

    return '${getGregorianMonthName(dateTime.month)} ${(dateTime.year).toString().persianNumeric()} ';
  }

  static String toDAndM(DateTime dateTime) {
    // var jalali = dateTime.toJalali().formatter;
    var j = dateTime.toJalali().formatter;

    return ' ${(j.d).persianNumeric()} ${(j.mN)}';
  }

  static toDashTime(DateTime dateTime) {
    return "${dateTime.year}-${dateTime.month}-${dateTime.day} ${dateTime.hour.toString().fixPart()}:${dateTime.minute.toString().fixPart()}";
  }

  static toTime(DateTime dateTime) {
    return "${dateTime.hour.toString().fixPart()}:${dateTime.minute.toString().fixPart()}";
  }

  static toTimeDay(TimeOfDay dateTime) {
    return "${dateTime.hour.toString().fixPart()}:${dateTime.minute.toString().fixPart()}";
  }

  static toDash(DateTime dateTime) {
    return "${dateTime.year}-${dateTime.month}-${dateTime.day} ";
  }

  static toJalaliSlash(DateTime dateTime) {
    Jalali jalali = dateTime.toJalali();
    return (jalali.year.toString() +
            "/" +
            jalali.month.toString() +
            "/" +
            jalali.day.toString())
        .persianNumeric();
  }

  static String getGregorianMonthName(int month) {
    switch (month) {
      case 1:
        return "January";
      case 2:
        return "February";
      case 3:
        return "March";
      case 4:
        return "April";
      case 5:
        return "May";
      case 6:
        return "June";
      case 7:
        return "July";
      case 8:
        return "Auguest";
      case 9:
        return "September";
      case 10:
        return "October";
      case 11:
        return "November";
      case 12:
        return "December";
      default:
        return "";
    }
  }
}
