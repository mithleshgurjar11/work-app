import 'package:flutter/material.dart';

import '../authentication/forgot_password.dart';
import '../authentication/login_page.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController NewPasswordCtr = TextEditingController();
  TextEditingController OldPasswordCtr = TextEditingController();
  TextEditingController ConfirmPasswordCtr = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Center(
              child: Text(
                'ChangePassword',
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
                    MaterialPageRoute(builder: (context) => ForgetPassword()));
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
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Color(0xff00000029))
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          height: 50,
                          child: TextField(
                            controller: OldPasswordCtr,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: 'Enter Your Old Password',
                                hintStyle: TextStyle(fontSize: 13),
                                contentPadding:
                                    EdgeInsets.only(top: 5, right: 16),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xffF79F10),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          height: 50,
                          child: TextField(
                            obscureText: _isObscure,
                            controller: NewPasswordCtr,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: 'Enter New Password',
                                hintStyle: TextStyle(
                                  fontSize: 13,
                                ),
                                contentPadding:
                                    EdgeInsets.only(top: 5, right: 16),
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    }),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xffF79F10),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Your New Password must be Different From Your\n"
                            " Previous Passwords.",
                            style: TextStyle(fontSize: 11, color: Colors.red),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          height: 50,
                          child: TextField(
                            obscureText: _isObscure,
                            controller: ConfirmPasswordCtr,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: 'Confirm New Password',
                                hintStyle: TextStyle(
                                  fontSize: 13,
                                ),
                                contentPadding:
                                    EdgeInsets.only(top: 5, right: 16),
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    }),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xffF79F10),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                        'Save',
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ),
                  ),
                  onTap: () {
                    print(NewPasswordCtr.text);
                    print(OldPasswordCtr.text);
                    print(ConfirmPasswordCtr.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                )
              ],
            ),
          ),
        ));
  }
}
