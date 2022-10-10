import 'package:flutter/material.dart';

import '../Screen/change_Password.dart';
import 'login_page.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController EmailCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Center(
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            leading: InkWell(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 20,
                width: 30,
                child: Icon(Icons.arrow_back_sharp),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            )),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF7F7F7F), Color(0xFF4863A0)])),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Image.asset(
                      "assets/images/forgetpasswordimage.png",
                      height: 150,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3.6,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(blurRadius: 10, color: Color(0xff00000029))
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                            top: 30,
                          ),
                          child: Text(
                            "Enter the Email ID/ Mobile no. associated with your\n "
                            "account we will send you a link & PIN to reset your\n "
                            "password",
                            style: TextStyle(fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 20),
                          child: Container(
                            height: 60,
                            width: 300,
                            child: TextField(
                              controller: EmailCtr,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: 'Email / Mobile no.',
                                  contentPadding: EdgeInsets.only(
                                      top: 5, right: 16, left: 15),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Color(0xffF79F10),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50))),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: Text(
                        'Send',
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ),
                  ),
                  onTap: () {
                    print(EmailCtr.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangePassword()));
                  },
                )
              ],
            ),
          ),
        ));
  }
}

// import 'package:flutter/material.dart';
//
// import 'login_page.dart';
//
// class ForgotPassword extends StatefulWidget {
//   ForgotPassword({Key? key}) : super(key: key);
//
//   @override
//   State<ForgotPassword> createState() => _ForgotPasswordState();
// }
//
// class _ForgotPasswordState extends State<ForgotPassword> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Colors.black87,
//           title: Center(
//             child: Text(
//               'Forgot Password',
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//           ),
//           leading: InkWell(
//             child: Container(
//               margin: EdgeInsets.all(10),
//               height: 20,
//               width: 30,
//               child: Icon(Icons.arrow_back_sharp),
//             ),
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => LoginPage()));
//             },
//           )),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//             color: Colors.white,
//             gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [Color(0xFF7F7F7F), Color(0xFF4863A0)])),
//         child: Padding(
//           padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 50),
//           child: Column(
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.90,
//                 height: MediaQuery.of(context).size.height * 0.065,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         blurRadius: 10.0,
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(20)),
//                 child: Center(
//                   child: TextField(
//                     keyboardType: TextInputType.emailAddress,
//                     textAlignVertical: TextAlignVertical.center,
//                     // controller: email,
//                     decoration: InputDecoration(
//                       contentPadding: EdgeInsets.all(10),
//                       counterText: "",
//                       hintStyle: TextStyle(color: Colors.black54),
//                       hintText: 'Enter Email/Mobile No',
//                       prefixIcon: Padding(
//                         padding: EdgeInsets.all(14.0),
//                         child: Icon(
//                           Icons.email,
//                           color: Colors.black54,
//                           size: 24.0,
//                         ),
//                       ),
//                       border: InputBorder.none,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
