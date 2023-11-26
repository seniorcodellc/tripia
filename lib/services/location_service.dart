// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'google_service/models/address.dart';
// import 'app.service.dart';
//
// class LocationService {
//   //
//   static Location location = Location();
//   static Address? currentAddress;
//   static bool serviceEnabled = false;
//
//   static Future<bool> showRequestBottomSheet() async {
//     var requestResult = false;
//     await showModalBottomSheet(
//       context: AppService().getContext,
//       clipBehavior: Clip.antiAlias,
//       isScrollControlled: true,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(32),
//         ),
//       ),
//       builder: (context) {
//         return LocationPermissionDialog(onResult: (result) {
//           debugPrint("result is $result");
//           requestResult = result;
//
//         });
//       },
//     );
//
//     //
//     return requestResult;
//   }
//
// }
