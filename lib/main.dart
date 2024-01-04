import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tripia_user/services/app.service.dart';
import 'package:tripia_user/services/custom_easy_localization.dart';
import 'config/routes/app_routes.dart';
import 'core/utils/app-string.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Future.delayed(const Duration(seconds: 10));
  // FlutterNativeSplash.remove();
  runApp(TripiaApp());
}

class TripiaApp extends StatelessWidget {
  const TripiaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        AppService().hideKeyboard;
      },
      child: MaterialApp(
        // locale: context.locale,
        // localizationsDelegates: context.localizationDelegates,
        // supportedLocales: context.supportedLocales,

        debugShowCheckedModeBanner: false,
        navigatorKey: AppService().navigatorKey,
        onGenerateRoute: RouteGenerator.getRoute,
        title: AppStrings.tripia,
        //home: const validator(),
      ),
    );
  }
}
