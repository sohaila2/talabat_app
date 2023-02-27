// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
//
// import '../models/user_model.dart';
//
// class UserController {
//   Future<UserModel> login({
//     required String phone,
//     required String password,
//   }) async {
//     final response = await http.get(
//       Uri.parse(""),
//     );
//
//     if (response.statusCode == 200) {
//       var jDecode = convert.jsonDecode(response.body);
//       var xx = UserModel.fromJson(jDecode);
//       print(jDecode);
//       return UserModel.fromJson(jDecode);
//     } else {
//       throw Exception('Something went wrong');
//     }
//   }
//
//   Future<UserModel> createAccout({
//     required String email,
//     required String phone,
//     required String password,
//   }) async {
//     final response = await http.post(
//       Uri.parse("http://localhost:5000/account"),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(<String, dynamic>{
//         'email': email,
//         'phoneNumber': phone,
//         'password': password,
//       }),
//     );
//
//     if (response.statusCode == 200) {
//       var jDecode = convert.jsonDecode(response.body);
//       var xx = UserModel.fromJson(jDecode);
//       print(jDecode);
//       return UserModel.fromJson(jDecode);
//     } else {
//       throw Exception('Something went wrong');
//     }
//   }
// }