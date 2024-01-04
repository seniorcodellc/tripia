import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tripia_user/core/utils/appConstants.dart';


class CustomEasyLocalization extends StatelessWidget {
  final Widget child;
  const CustomEasyLocalization({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: AppConstants.supportedLocales,
      path: AppConstants
          .translationPath, // <-- change the path of the translation files
      fallbackLocale: AppConstants.enLocale,
      saveLocale: true,
      startLocale: AppConstants.arLocale,
      child: child,
    );
  }
}
