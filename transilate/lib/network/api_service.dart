//
//
// import 'package:dio/dio.dart';
// import 'package:retrofit/retrofit.dart';
//
// part 'api_service.g.dart';
//
// @RestApi(baseUrl: " https://google-translate1.p.rapidapi.com/language/translate/v2") //live link
//
// abstract class ApiService {
//   factory ApiService(Dio dio, {String? baseUrl, String? token}) {
//     dio.options =
//         BaseOptions(receiveTimeout: 60000, connectTimeout: 60000, headers: {
//       'Authorization': 'Bearer $token',
//     });
//     return _ApiService(dio, baseUrl: baseUrl);
//   }
//
//   @GET('api/order-return-reasons')
//   Future<CancelReasonResponse> geOrderReturnReasonList();
//
//
// }
