// class UserModel {
//   Data? data;
//   String? message;
//
//   UserModel({this.data, this.message});
//
//   UserModel.fromJson(Map<String, dynamic> json) {
//     data = json['data'] != null ? Data.fromJson(json['data']) : null;
//     message = json['message'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     data['message'] = message;
//     return data;
//   }
// }
//
// class Data {
//   String? Name;
//   String? email;
//   int? phoneNumber;
//   String? password;
//
//
//   Data({this.email, this.phoneNumber, this.password});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     email = json['email'];
//     phoneNumber = json['phoneNumber'];
//     password = json['password'];
//
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['email'] = email;
//     data['phoneNumber'] = phoneNumber;
//     data['password'] = password;
//
//     return data;
//   }
// }