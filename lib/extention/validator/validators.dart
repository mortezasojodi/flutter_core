import 'package:core/core.dart';

class Validators {
  bool phoneNumberValidator(String value) {
    RegExp regex = new RegExp(r"^(?:[+0]9)?[0-9]{9}$");
    return regex.hasMatch(value.trim().padLeft(10, '0'));
  }

  bool pinCodeValidator(String? value) {
    /// [AppConfig.smsPinLength]
    RegExp regex = new RegExp(r"^[0-9]{6}$");
    return value != null && regex.hasMatch(value.trim());
  }

  bool nationalCodeValidator(String? value) {
    RegExp regex = RegExp(r"^[0-9]{10}$");

    if (value != null && regex.hasMatch(value)) {
      final paddedValue = value.padLeft(10, '0');
      int A = int.parse(paddedValue[9]);

      int B = 0;
      for (int i = 0; i < 9; i++) {
        B += int.parse(paddedValue[i]) * (10 - i);
      }

      int C = B % 11;
      if (C == 0 && A == C) {
        return true;
      } else if (C == 1 && A == 1) {
        return true;
      } else if (C > 1 && A == 11 - C) {
        return true;
      }
    }

    return false;
  }

  static bool emailValidator(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  static String? farsiValidator(String text) {
    if (text != "") {
      return farsiReg.hasMatch(text)
          ? null
          : "لطفا کارکتر فارسی یا عدد وارد نمایید";
    } else {
      return null;
    }
  }

  static String? farsiJustValidator(String text) {
    if (text != "") {
      return farsiJustReg.hasMatch(text)
          ? null
          : "لطفا کارکتر فارسی وارد نمایید";
    } else {
      return null;
    }
  }

  static String? charValidator(String text) {
    if (text != "") {
      return charReg.hasMatch(text) ? null : "لطفا کارکتر حروف وارد نمایید";
    } else {
      return null;
    }
  }

  static String? charJustReg(String text) {
    if (text != "") {
      return charjustReg.hasMatch(text)
          ? null
          : "لطفا کارکتر انگلیسی وارد نمایید";
    } else {
      return null;
    }
  }

  static String? numberAndSlashValidator(String text) {
    if (text != "") {
      return numberAndSlashReg.hasMatch(text)
          ? null
          : "لطفا عدد و اسلش وارد نمایید";
    } else {
      return null;
    }
  }

  static String? numberValidator(String text) {
    if (text != "") {
      return numberReg.hasMatch(text) ? null : "لطفا عدد وارد نمایید";
    } else {
      return null;
    }
  }

  static String? numValidator(String text) {
    if (text != "") {
      return num.tryParse(text) != null ? null : "لطفا عدد وارد نمایید";
    } else {
      return null;
    }
  }

  static String? denyfarsiJustValidator(String text) {
    if (text != "") {
      return denyfarsiJustReg.hasMatch(text)
          ? null
          : "لطفا کارکتر انگلیسی وارد فرمایید";
    } else {
      return null;
    }
  }
}

// 0020421729
