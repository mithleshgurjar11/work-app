import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/RegistrationPostModel.dart';

// Future<PostRegModel?> getRegistration1(
//     String firstName,
//     String lastName,
//     String address,
//     String mobile_no,
//     String email,
//     String password,
//     ) async {
//   var headers = {
//     'Cookie': 'PHPSESSID=5e8647d00105c64c111f11548efc780d'};
//   var request = http.MultipartRequest(
//       'POST', Uri.parse('https://infraspares.co.in/property/4HOME/examples/user_registrationApi.php'));
//   request.fields.addAll({
//     'data': '{    '
//         ' \n "user_id": "1",\n            '
//         '"firstName": "kanika",\n           '
//         ' "lastName": "jain",\n            '
//         '"address": "dhamnod",\n           '
//         ' "mobile_no": "8978699955",\n           '
//         ' "email": "kanika12@gmail.com",\n          '
//         '  "password": "12345"\n\n }'
//   });
//   request.files.add(await http.MultipartFile.fromPath('profilepic', '/C:/Users/mithl/OneDrive/Pictures/Screenshots/Screenshot (17).png'));
//   request.headers.addAll(headers);
//
//   http.StreamedResponse response = await request.send();
//
//   if (response.statusCode == 200) {
//     print(await response.stream.bytesToString());
//   }
//   else {
//     print(response.reasonPhrase);
//   }
//   return null;
// }


Future<RegistrationPostModel?> getRegistration(
    String firstName,
    String lastName,
    String address,
    String mobile_no,
    String email,
    String password,
    ) async {
  var request = http.MultipartRequest('POST', Uri.parse('https://infraspares.co.in/property/4HOME/examples/user_registrationApi.php'));
  request.fields.addAll({
    'data': '{     '
        '\n "user_id": "1",\n          '
        '  "firstName": "kanika",\n           '
        ' "lastName": "jain",\n          '
        '  "address": "dhamnod",\n          '
        '  "mobile_no": "8978699955",\n           '
        ' "email": "kanika12@gmail.com",\n          '
        '  "password": "12345"\n\n }'
  });
  request.files.add(await http.MultipartFile.fromPath('profilepic', '/C:/Users/mithl/OneDrive/Pictures/Screenshots/Screenshot (17).png'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  }
  else {
    print(response.reasonPhrase);
  }
  return null;
}