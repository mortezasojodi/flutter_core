extension Extension on String? {
  String persianNumeric() =>
      StringExtentions.replaceFarsiNumber(this == null ? "" : toString());
  String georgianNumeric() => StringExtentions.georgianNumber(toString());
  String? numValidator() => StringExtentions.numValidatorPlus(this);
  String? intValidatorPlus() => StringExtentions.intValidatorPlus(this);
  String? numValidatorPlus() => StringExtentions.numValidatorPlus(this);
  String? numAndLenghtValidator(int lenght) =>
      StringExtentions.numAndLenghtValidator(this, lenght);
  String? checkBigger(
          String? otherNum, bool mustBigger, String inName, String fName) =>
      StringExtentions.checkBigger(this, otherNum, mustBigger, inName, fName);
  String formatMoney() => StringExtentions.formatMoney(this ?? "");
  String fixPart() => StringExtentions.fixParts(this ?? "");
}

class StringExtentions {
  static String fixParts(String time) {
    return time.length == 1 ? "0" + time : time;
  }

  static String formatMoney(String text) {
    return text
        .replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',')
        .persianNumeric();
  }

  static String? checkBigger(String? input, String? otherNum, bool mustBigger,
      String? inName, String? fName) {
    if ((input == null || input.isEmpty) ||
        (otherNum == null || otherNum.isEmpty) ||
        (num.tryParse(input) == null) ||
        (num.tryParse(otherNum) == null)) {
      return null;
    } else if ((!mustBigger && num.parse(input) > num.parse(otherNum)) ||
        (mustBigger && num.parse(input) < num.parse(otherNum))) {
      return "$inName نمیتواند ${mustBigger ? 'کوچکتر' : 'بزرگتر'} از $fName باشد";
    }
    return null;
  }

  static String? numValidator(
    String? input,
  ) {
    if (input == null || input.isEmpty) {
      return null;
    } else if (num.tryParse(input) == null) {
      return "لطفا عدد وارد نمایید";
    }
    return null;
  }

  static String? numValidatorPlus(
    String? input,
  ) {
    if (input == null || input.isEmpty) {
      return null;
    } else if (num.tryParse(input) == null) {
      return "لطفا عدد وارد نمایید";
    } else if (num.parse(input) <= 0) {
      return "لطفا عدد بزرگتر از ۰ وارد نمایید";
    }
    return null;
  }

  static String? intValidatorPlus(
    String? input,
  ) {
    if (input == null || input.isEmpty) {
      return null;
    } else if (int.tryParse(input) == null) {
      return "لطفا عدد صحیح وارد نمایید";
    } else if (int.parse(input) <= 0) {
      return "لطفا عدد بزرگتر از ۰ وارد نمایید";
    }
    return null;
  }

  static String? numAndLenghtValidator(String? input, int lenght) {
    if (input == null || input.isEmpty) {
      return null;
    }

    if (num.tryParse(input) == null) {
      return "لطفا عدد وارد نمایید";
    } else if (lenght != input.length) {
      return "${lenght} عدد وارد نمایید ";
    }
    return null;
  }

  static String georgianNumber(String input) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const farsi = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(farsi[i], english[i]);
    }

    return input;
  }

  static String replaceFarsiNumber(String input) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const farsi = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], farsi[i]);
    }

    return input;
  }
}
