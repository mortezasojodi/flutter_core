import 'package:core/core.dart';

class RegXType {
  const RegXType._(this.value);

  static RegXType farsiRegs = RegXType._(farsiReg);
  static RegXType farsiJustRegs = RegXType._(farsiJustReg);
  static RegXType charRegs = RegXType._(charReg);
  static RegXType numberAndSlashRegs = RegXType._(numberAndSlashReg);

  static List<RegXType> get values =>
      <RegXType>[farsiRegs, farsiJustRegs, charRegs, numberAndSlashRegs];

  final RegExp value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      other is RegXType && other.hashCode == hashCode;

  @override
  String toString() {
    final typeToStringMap = {
      farsiRegs: 'farsiRegs',
      farsiJustRegs: 'farsiJustRegs',
      charRegs: 'charRegs',
      numberAndSlashRegs: 'numberAndSlashRegs',
    };

    return typeToStringMap[this]!;
  }

  String toStringTitle() {
    final typeToStringMap = {
      farsiRegs: 'حروف فارسی و اعداد',
      farsiJustRegs: 'حروف فارسی',
      charRegs: 'حروف',
      numberAndSlashRegs: 'عدد و اسلش',
    };

    return typeToStringMap[this]!;
  }

  static RegXType? fromString(String? s) {
    if (s == null) return null;
    switch (s) {
      case 'farsiRegs':
        return farsiRegs;
      case 'farsiJustRegs':
        return farsiJustRegs;
      case 'charRegs':
        return charRegs;
      case 'numberAndSlashRegs':
        return numberAndSlashRegs;

      default:
        return null;
    }
  }
}
