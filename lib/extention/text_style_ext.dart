import 'package:core/core.dart';
import 'package:flutter/material.dart';

extension TextStyleExtention on TextStyle? {
  TextStyle toOnBackground(BuildContext context) {
    return this!.copyWith(color: Theme.of(context).colorScheme.onBackground);
  }

  // TextStyle toSuccess(BuildContext context) {
  //   return this!.copyWith(color: context.theme.grey1);
  // }

  TextStyle toOnPrimary(BuildContext context) {
    return this!.copyWith(color: Theme.of(context).colorScheme.onPrimary);
  }

  TextStyle toTertiary(BuildContext context) {
    return this!.copyWith(color: Theme.of(context).colorScheme.tertiary);
  }

  TextStyle toOnSurface(BuildContext context) {
    return this!.copyWith(color: Theme.of(context).colorScheme.onSurface);
  }

  TextStyle toBackground(BuildContext context) {
    return this!.copyWith(color: Theme.of(context).colorScheme.background);
  }

  TextStyle toPrimary(BuildContext context) {
    return this!.copyWith(color: Theme.of(context).colorScheme.primary);
  }

  TextStyle toGray3(BuildContext context) {
    return this!.copyWith(color: Color.fromRGBO(136, 136, 136, 1));
  }

  TextStyle toGray2(BuildContext context) {
    return this!.copyWith(color: Color.fromRGBO(209, 209, 209, 1));
  }

  TextStyle toGray5(BuildContext context) {
    return this!.copyWith(color: Color.fromRGBO(69, 69, 69, 1));
  }

  TextStyle toOnSecondaryContainer(BuildContext context) {
    return this!
        .copyWith(color: context.theme.colorScheme.onSecondaryContainer);
  }

  TextStyle toOnSecondary(BuildContext context) {
    return this!.copyWith(color: context.theme.colorScheme.onSecondary);
  }

  TextStyle toSecondary(BuildContext context) {
    return this!.copyWith(color: context.theme.colorScheme.secondary);
  }

  TextStyle toSuccess(BuildContext context) {
    return this!.copyWith(color: context.customColor.success);
  }
}
