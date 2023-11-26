//
// import 'coordinates.dart';
//
// class Address {
//   /// The geographic coordinates.
//   Coordinates? coordinates;
//
//   /// The formatted address with all lines.
//   final String? addressLine;
//
//   /// The localized country name of the address.
//   final String? countryName;
//
//   /// The country code of the address.
//   final String? countryCode;
//
//   /// The feature name of the address.
//   final String? featureName;
//
//   /// The postal code.
//   final String? postalCode;
//
//   /// The administrative area name of the address
//   final String? adminArea;
//
//   /// The sub-administrative area name of the address
//   final String? subAdminArea;
//
//   /// The locality of the address
//   final String? locality;
//
//   /// The sub-locality of the address
//   final String? subLocality;
//
//   String? placeId;
//
//   Address({
//     this.coordinates,
//     this.addressLine,
//     this.countryName,
//     this.countryCode,
//     this.featureName,
//     this.postalCode,
//     this.adminArea,
//     this.subAdminArea,
//     this.locality,
//     this.subLocality,
//     this.placeId
//   });
//
//   /// Creates an address from a map containing its properties.
//   factory Address.fromMap(Map map) {
//     return Address(
//       addressLine: map['description'],
//       placeId: map['place_id']
//
//       //map["subAdminArea"],
//     );
//   }
//
//
//   factory Address.fromPlaceDetailsMap(Map map) {
//     return Address(
//       coordinates: map["geometry"] != null ? Coordinates.fromMap(map["geometry"]["location"]) : null,
//       addressLine: map['formatted_address'],
//       placeId: map['place_id'],
//       //map["addressLine"],
//       countryName: getTypeFromAddressComponents("country", map),
//       //map["countryName"],
//       countryCode: getTypeFromAddressComponents(
//         "country",
//         map,
//         nameTye: "short_name",
//       ),
//       //map["countryCode"],
//       featureName: map["name"],
//       //map["featureName"],
//       postalCode: getTypeFromAddressComponents("postal_code", map),
//       //map["postalCode"],
//       locality: getTypeFromAddressComponents("locality", map),
//       //map["locality"],
//       subLocality: getTypeFromAddressComponents("sublocality", map),
//       //map["subLocality"],
//       adminArea: getTypeFromAddressComponents("administrative_area_level_1", map),
//       //map["adminArea"],
//       subAdminArea: getTypeFromAddressComponents("administrative_area_level_2", map),
//       //map["subAdminArea"],
//     );
//   }
//
//   /// Creates a map from the address properties.
//   Map toMap() => {
//         "coordinates": coordinates!.toMap(),
//         "addressLine": addressLine,
//         "countryName": countryName,
//         "countryCode": countryCode,
//         "featureName": featureName,
//         "postalCode": postalCode,
//         "locality": locality,
//         "subLocality": subLocality,
//         "adminArea": adminArea,
//         "subAdminArea": subAdminArea,
//       };
//
//   //
//   static String getTypeFromAddressComponents(
//     String type,
//     Map searchResult, {
//     String nameTye = "long_name",
//   }) {
//     //
//     String result = "";
//     //
//     if (searchResult["address_components"] != null) {
//       for (var componenet in (searchResult["address_components"] as List)) {
//         final found = (componenet["types"] as List).contains(type);
//         if (found) {
//           //
//           result = componenet[nameTye];
//           break;
//         }
//       }
//     }
//     return result;
//   }
// }
