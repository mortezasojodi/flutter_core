import 'package:core/extention/validator/validators.dart';

extension ExtensionValidator on String {
  bool emailValidator() => Validators.emailValidator(this);
  String? farsiValidator() => Validators.farsiValidator(this);
  String? farsiJustValidator() => Validators.farsiJustValidator(this);
  String? charValidator() => Validators.charValidator(this);
  String? charJustReg() => Validators.charJustReg(this);
  String? numberAndSlashValidator() => Validators.numberAndSlashValidator(this);
  String? numberValidator() => Validators.numberValidator(this);
  String? denyfarsiJustValidator() => Validators.denyfarsiJustValidator(this);
    String? numValidator() => Validators.numValidator(this);
}
