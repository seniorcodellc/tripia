// import 'package:dartz/dartz.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:mnkafuser/core/extensions/extensions.dart';
// import 'package:singleton/singleton.dart';
//
// import '../../core/api/api_constants/api_constants.dart';
// import '../../core/api/api_constants/api_endpoinst.dart';
// import '../../core/api/dio/dio-consumer.dart';
// import '../../core/errors/exceptions.dart';
// import '../../core/errors/failures.dart';
// import '../../core/local_storage/app_prefs.dart';
// import '../../core/utils/app_helper.dart';
// import 'models/address.dart';
// import 'models/coordinates.dart';
// import 'package:mnkafuser/injection_container.dart' as sl;
// class GoogleService {
//   late DioConsumer dioConsumer;
//   /// Factory method that reuse same instance automatically
//   factory GoogleService() => Singleton.lazy(() => GoogleService._());
//
//   /// Private constructor
//   GoogleService._(){
//    dioConsumer= sl.getIt<DioConsumer>();
//   }
//
//   Future<Either<Failure, Address>> fetchPlaceDetails(Address address) async =>await execute<Address>(() async {
//         // TODO: implement fetchPlaceDetails
//         Map<String, dynamic> queryParameters = {
//           "place_id": address.placeId,
//           'key': ApiConstants.googleMapApiKey,
//         };
//         Map responseBody = await dioConsumer.getRequest(
//             path: EndPoints.addressInfo, baseUrl: EndPoints.googleMapsBaseUrl, queryParams: queryParameters);
//         if (responseBody["status"].toString().isEqualTo("OK")) {
//           return Address.fromPlaceDetailsMap(responseBody['result']);
//         } else {
//           throw const ServerException();
//         }
//       });
//
//   /*https://maps.googleapis.com/maps/api/geocode/json?latlng=40.714224,-73.961452&key=YOUR_API_KEY*/
//   /*https://developers.google.com/maps/documentation/places/web-service/details*/
// /*  https://maps.googleapis.com/maps/api/place/details/output?*/
//   Future<Either<Failure, List<Address>>> findAddressesFromCoordinates(Coordinates coordinates) async =>
//      execute<List<Address>>(() async {
//         Map<String, dynamic> queryParameters = {
//           'latlng': '${coordinates.latitude},${coordinates.longitude}',
//           'key': ApiConstants.googleMapApiKey,
//           'language': AppPrefs.appLocale
//         };
//         Map responseBody = await dioConsumer.getRequest(
//             path: EndPoints.geocodeApi, baseUrl: EndPoints.googleMapsBaseUrl, queryParams: queryParameters);
//         if (responseBody["status"].toString().isEqualTo("OK")) {
//           return (responseBody['results'] as List).map((e) => Address.fromPlaceDetailsMap(e)).toList();
//         } else {
//           throw const ServerException();
//         }
//       });
//
//   @override
//   Future<Either<Failure, List<Address>>> findAddressesFromQuery(String placeName) async {
//     /* https://developers.google.com/maps/documentation/places/web-service/autocomplete */
//     placeName = placeName.replaceAll(" ", "+");
//     String? region = WidgetsBinding.instance.window.locale.countryCode;
//     debugPrint("countery coode is $region");
//     String myLatLng = "";
//
// /*    if (LocationService.currentAddress != null) {
//       myLatLng = "${LocationService.currentAddress?.coordinates?.latitude},";
//       myLatLng += "${LocationService.currentAddress?.coordinates?.longitude}";
//     }*/
//     return  execute<List<Address>>(() async {
//       Map<String, dynamic> queryParameters = {
//         'input': placeName,
//         //'region': region,
//         //    "location": myLatLng,
//         'key': ApiConstants.googleMapApiKey,
//         'sessiontoken': '123456789',
//         'components': 'country:eg'
//       };
//       Map responseBody = await dioConsumer.getRequest(
//           path: EndPoints.autoCompleteApi, baseUrl: EndPoints.googleMapsBaseUrl, queryParams: queryParameters);
//       if (responseBody["status"].toString().isEqualTo("OK")) {
//         return (responseBody['predictions'] as List).map((e) => Address.fromMap(e)).toList();
//       } else {
//         throw const ServerException();
//       }
//     });
//   }
// }
