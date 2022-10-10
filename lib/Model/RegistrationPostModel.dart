class RegistrationPostModel {
  String? message;
  Data? data;
  bool? status;

  RegistrationPostModel({this.message, this.data, this.status});

  RegistrationPostModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    return data;
  }
}

class Data {
  String? userId;
  String? firstName;
  String? lastName;
  String? address;
  String? mobileNo;
  String? email;
  String? password;

  Data(
      {this.userId,
        this.firstName,
        this.lastName,
        this.address,
        this.mobileNo,
        this.email,
        this.password});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    address = json['address'];
    mobileNo = json['mobile_no'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['address'] = this.address;
    data['mobile_no'] = this.mobileNo;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}




// /// message : "User registered successfully!!"
// /// data : {"user_id":"1","firstName":"kanika","lastName":"jain","address":"dhamnod","mobile_no":"8978699955","email":"kanika12@gmail.com","password":"12345"}
// /// status : true
//
// class RegistrationPostMethod {
//   RegistrationPostMethod({
//       String? message,
//       Data? data,
//       bool? status,}){
//     _message = message;
//     _data = data;
//     _status = status;
// }
//
//   RegistrationPostMethod.fromJson(dynamic json) {
//     _message = json['message'];
//     _data = json['data'] != null ? Data.fromJson(json['data']) : null;
//     _status = json['status'];
//   }
//   String? _message;
//   Data? _data;
//   bool? _status;
// RegistrationPostMethod copyWith({  String? message,
//   Data? data,
//   bool? status,
// }) => RegistrationPostMethod(  message: message ?? _message,
//   data: data ?? _data,
//   status: status ?? _status,
// );
//   String? get message => _message;
//   Data? get data => _data;
//   bool? get status => _status;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['message'] = _message;
//     if (_data != null) {
//       map['data'] = _data?.toJson();
//     }
//     map['status'] = _status;
//     return map;
//   }
//
// }
//
// /// user_id : "1"
// /// firstName : "kanika"
// /// lastName : "jain"
// /// address : "dhamnod"
// /// mobile_no : "8978699955"
// /// email : "kanika12@gmail.com"
// /// password : "12345"
//
// class Data {
//   Data({
//       String? userId,
//       String? firstName,
//       String? lastName,
//       String? address,
//       String? mobileNo,
//       String? email,
//       String? password,}){
//     _userId = userId;
//     _firstName = firstName;
//     _lastName = lastName;
//     _address = address;
//     _mobileNo = mobileNo;
//     _email = email;
//     _password = password;
// }
//
//   Data.fromJson(dynamic json) {
//     _userId = json['user_id'];
//     _firstName = json['firstName'];
//     _lastName = json['lastName'];
//     _address = json['address'];
//     _mobileNo = json['mobile_no'];
//     _email = json['email'];
//     _password = json['password'];
//   }
//   String? _userId;
//   String? _firstName;
//   String? _lastName;
//   String? _address;
//   String? _mobileNo;
//   String? _email;
//   String? _password;
// Data copyWith({  String? userId,
//   String? firstName,
//   String? lastName,
//   String? address,
//   String? mobileNo,
//   String? email,
//   String? password,
// }) => Data(  userId: userId ?? _userId,
//   firstName: firstName ?? _firstName,
//   lastName: lastName ?? _lastName,
//   address: address ?? _address,
//   mobileNo: mobileNo ?? _mobileNo,
//   email: email ?? _email,
//   password: password ?? _password,
// );
//   String? get userId => _userId;
//   String? get firstName => _firstName;
//   String? get lastName => _lastName;
//   String? get address => _address;
//   String? get mobileNo => _mobileNo;
//   String? get email => _email;
//   String? get password => _password;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['user_id'] = _userId;
//     map['firstName'] = _firstName;
//     map['lastName'] = _lastName;
//     map['address'] = _address;
//     map['mobile_no'] = _mobileNo;
//     map['email'] = _email;
//     map['password'] = _password;
//     return map;
//   }
//
// }