

import 'package:easy_localization/easy_localization.dart';
import 'package:experiment_project/product/utility/enums/locales.dart';
import 'package:flutter/material.dart';

@immutable
final class CustomLocalization extends EasyLocalization {
  CustomLocalization({
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedItems,
          path: _path,
          useOnlyLangCode: true,
        );

  static final List<Locale> _supportedItems = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String _path = 'asset/translations';

  static Future<void> updateLanguage({required BuildContext context, required Locales locales}) =>
      context.setLocale(locales.locale);
}
