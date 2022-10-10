import 'package:flutter/material.dart';
import 'package:property_buy_seller/authentication/registration_page.dart';

import '../Screen/bottom_navigation_bar.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passenable = true;
  bool visible = false;
  bool _passwordVisible = false;

  final _formKey = GlobalKey<FormState>();

  String _mobile = '';
  String _passwors = '';

  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_mobile);
      debugPrint(_passwors);
    }
  }

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  // _signup() async {
  //   // var user = Provider.of<UserProvider>(context, listen: false);
  //   if (email.text.toString().isNotEmpty &&
  //       password.text.toString().isNotEmpty) {
  //     // print("email ::" + email.text.toString());
  //     // print("pass:: " + password.text.toString());
  //
  //     PostLogin? model =
  //         (await getdatalogin(email.text, password.text)) as PostLogin?;
  //
  //     // print(model!.id);
  //
  //     // print("Get Id::: " + model!.id.toString());
  //
  //     // bool data = await saveUser(model!.id);
  //
  //     // user.userId = model!.id;
  //     // if (data) {
  //     //   user.userId = model!.id;
  //     // }
  //     showToast("Login Successfully");
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => Home()),
  //     );
  //
  //     /* if (model!.status == true) {
  //       bool data = await saveUser(model.data!.userId);
  //       if (data) {
  //         //showToast("Welcome ${model.data!.username}");
  //         // user.userId = model.data!.userId;
  //       }
  //     } else {
  //       // ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //     }*/
  //   } else {
  //     // print("Please Enter  Title Name");
  //     showToast("Please Enter Valid Email And Password");
  //     // ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login.webp"),
                fit: BoxFit.cover),
          ),
          // height: MediaQuery.of(context).size.height,
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         begin: Alignment.topLeft,
          //         end: Alignment.bottomRight,
          //         colors: [Color(0xFFF17024), Color(0xFFFEAC00)])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Padding(
                      padding: EdgeInsets.only(top: 200.0),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.065,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 10.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlignVertical: TextAlignVertical.center,
                        controller: email,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          counterText: "",
                          hintStyle: TextStyle(color: Colors.black54),
                          hintText: 'Enter Email/ Mobile No ',
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Icon(
                              Icons.email,
                              color: Colors.black54,
                              size: 24.0,
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.065,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 10.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.name,
                        // obscureText: true,
                        controller: password,
                        obscureText: _passwordVisible ? true : false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Enter Password',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black54,
                            ),
                            onPressed: () {
                              // Update the state i.e. toggle the state of passwordVisible variable
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.only(right: 35, bottom: 20)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassword()));
                      },
                      child: Text("Forgot Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,fontSize: 15)),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    // _signup();
                    // _trySubmitForm()
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => bottom_avigationar()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account? ",
                      style: TextStyle(
                          color: Colors.white,fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegistrationPage()));
                        },
                        child: Text("Register Now",
                            style: TextStyle(
                                color: Color(0xFF793812),
                                fontWeight: FontWeight.bold,fontSize: 15))),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
