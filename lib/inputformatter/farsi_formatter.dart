import 'package:flutter/services.dart';

RegExp get farsiReg => RegExp(r'^[\u0600-\u06FF0-9\s]+$');
RegExp get farsiJustReg => RegExp(r'^[\u0600-\u06FF\s]+$');
RegExp get charReg => RegExp(r'^[\u0600-\u06FFa-zA-Z\s]+$');
RegExp get charjustReg => RegExp(r'^[\a-zA-Z\s]+$');
RegExp get numberAndSlashReg => RegExp(r'\d|\/');
RegExp get denyfarsiJustReg => RegExp(r'^[a-zA-Z0-9\s]+$');
RegExp get numberReg => RegExp(r'^[0-9]+$');

FilteringTextInputFormatter get farsiFormatter =>
    FilteringTextInputFormatter.allow(farsiReg);
FilteringTextInputFormatter get farsiJustFormatter =>
    FilteringTextInputFormatter.allow(farsiJustReg);
FilteringTextInputFormatter get charFormatter =>
    FilteringTextInputFormatter.allow(charReg);
FilteringTextInputFormatter get numberAndSlashFormatter =>
    FilteringTextInputFormatter.allow(numberAndSlashReg);
FilteringTextInputFormatter get denyfarsiJustFormatter =>
    FilteringTextInputFormatter.deny(denyfarsiJustReg);
