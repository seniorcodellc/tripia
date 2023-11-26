// import 'dart:io';
//
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:mnkafuser/core/extensions/extensions.dart';
//
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:mnkafuser/injection_container.dart' as di;
// import 'package:singleton/singleton.dart';
//
// import '../core/local_storage/app_prefs.dart';
// import '../core/utils/app_settings.dart';
//
// class FirebaseService {
//   /// Factory method that reuse same instance automatically
//   factory FirebaseService() => Singleton.lazy(() => FirebaseService._());
//
//   /// Private constructor
//   FirebaseService._();
//   SharedPreferences preferences = di.getIt<SharedPreferences>();
//   FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
//   Future<String?> firebaseMessagingInit() async {
//     String? fcmToken;
//     await firebaseMessaging.requestPermission();
//     if (Platform.isAndroid) {
//       fcmToken = await FirebaseMessaging.instance.getToken();
//     } else if (Platform.isIOS) {
//       fcmToken = await FirebaseMessaging.instance.getAPNSToken();
//     }
//     logger.e("token is $fcmToken");
//     if (fcmToken.isNotNull) {
//       preferences.setString(AppPrefs.deviceTokenKey, fcmToken!);
//     }
//     if (fcmToken.isNotNull) {
//       FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
//       FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//         print('Got a message whilst in the foreground!');
//         print('Message data: ${message.data}');
//
//         if (message.notification != null) {
//           print("title = ${message.notification?.title}");
//           print("title = ${message.notification?.body}");
//           print("title = ${message.data}");        }
//       });
//     }
//     return fcmToken;
//   }
//
//
// }
// Future<void> handleBackgroundMessage(RemoteMessage remoteMessage) async {
//   print("title = ${remoteMessage.notification?.title}");
//   print("title = ${remoteMessage.notification?.body}");
//   print("title = ${remoteMessage.data}");
// }
