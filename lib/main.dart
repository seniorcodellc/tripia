import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tripia_user/features/booking_screens/presentation/pages/booking_screen_1.dart';
import 'package:tripia_user/services/app.service.dart';
import 'package:tripia_user/tryValidator.dart';
import 'config/routes/app_routes.dart';
import 'core/utils/app-string.dart';

Future main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Future.delayed(const Duration(seconds: 10));
  // FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  get hideKeyboard => FocusManager.instance.primaryFocus?.unfocus();
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       hideKeyboard();
      },
      child: GetMaterialApp(
        // locale: context.locale,
        // localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        navigatorKey: AppService().navigatorKey,
        onGenerateRoute:RouteGenerator.getRoute,
        title: AppStrings.tripia,
        //home: const validator(),
      ),
    );
  }
}


