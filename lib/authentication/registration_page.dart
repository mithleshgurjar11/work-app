// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../Api/constant.dart';
import '../Helper/constant.dart';
import '../Model/RegistrationPostModel.dart';
import '../Screen/bottom_navigation_bar.dart';
import '../Screen/validtor.dart';
import 'login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool passenable = true;
  bool visible = false;
  bool _passwordVisible = false;

  PickedFile? imageFile = null;

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choose option",
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openGallery(context);
                    },
                    title: Text("Gallery"),
                    leading: Icon(
                      Icons.account_box,
                      color: Colors.blue,
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                    },
                    title: Text("Camera"),
                    leading: Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
  final _formKey = GlobalKey<FormState>();
  TextEditingController ConfirmPassword = TextEditingController();
  TextEditingController FullName = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController Mobile= TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Address = TextEditingController();
  TextEditingController Password = TextEditingController();


  _signup() async {
     //var user = Provider.of<UserProvider>(context, listen: false);
    if (FullName.text.toString().isNotEmpty &&
        gender.text.toString().isNotEmpty &&
        Mobile.text.toString().isNotEmpty &&
        Email.text.toString().isNotEmpty &&
        Address.text.toString().isNotEmpty &&
        Password.text.toString().isNotEmpty) {
      // print("name ::" + name.text.toString());
      // print("father ::" + father_name.text.toString());
      // print("gender ::" + gender.text.toString());
      // print("blood ::" + blood_group.text.toString());
      // print("dob::" + dob.text.toString());
      // print("cast ::" + cast.text.toString());
      // print("profession ::" + profession.text.toString());
      // print("subcast ::" + subcast.text.toString());
      // print("current city::" + current_city.text.toString());
      // print("current state ::" + current_state.text.toString());
      // print("current house ::" + current_house.text.toString());
      // print("current dis ::" + current_district.text.toString());
      // print("p city ::" + permanent_city.text.toString());
      // print("p dist ::" + permanent_district.text.toString());
      // print("p house::" + permanent_house.text.toString());
      // print("pstate ::" + permanent_state.text.toString());
      // print("mobile ::" + mobile_no.text.toString());
      // print("email ::" + email.text.toString());
      // print("pass:: " + password.text.toString());

      RegistrationPostModel? model = await getRegistration(
          FullName.text,
          gender.text,
          Mobile.text,
          Email.text,
          Address.text,
          Password.text,);

      // print(model!.id);

      // print("Get Id::: " + model!.id.toString());

      // bool data = await saveUser(model!.id);

      // user.userId = model!.id;
      // if (data) {
      //   user.userId = model!.id;
      // }
      showToast("Insert Data Successfully");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => bottom_avigationar()),
      );

      /* if (model!.status == true) {
        bool data = await saveUser(model.data!.userId);
        if (data) {
          //showToast("Welcome ${model.data!.username}");
          // user.userId = model.data!.userId;
        }
      } else {
        // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }*/
    } else {
      // print("Please Enter  Title Name");
      showToast("Please Enter All Data");
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            'Registration Page',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          leading: InkWell(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 20,
              width: 30,
              child: Icon(Icons.arrow_back_sharp),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginPage()));
            },
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF7F7F7F), Color(0xFF4863A0)])),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            shrinkWrap: true,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 1, color: Colors.grey)],
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.black,
                            child: Center(
                              // Image.file(File(imageFile!.path)
                              child: (imageFile == null)
                                  ? IconButton(
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.black,
                                  size: 36,
                                ),
                                onPressed: () {},
                              )
                                  : Image.file(
                                File(imageFile!.path),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          child: Padding(
                            padding: EdgeInsets.only(left: 92.0),
                            child: CircleAvatar(
                              radius: 19,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                'assets/images/edit.png',
                                height: 17,
                                width: 17,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          onTap: () {
                            _showChoiceDialog(context);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding:
                      const EdgeInsets.only(left: 18, right: 18, top: 2),
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Pleanse Enter Name*.';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.text,
                          controller: FullName,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            hintText: 'Full Name.*',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: const Icon(
                                Icons.person,
                                color: Color(0xffF79F10),
                              ),
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 18, right: 18, top: 2),
                      child: TextFormField(
                          maxLength: 10,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Gender* .';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.text,
                          controller: gender,
                          decoration: InputDecoration(
                            counterText: "",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            hintText: 'Gender*',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: const Icon(
                                Icons.person,
                                color: Color(0xffF79F10),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 18, right: 18, top: 2),
                      child: TextFormField(
                          maxLength: 10,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Mobile no* .';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          controller: Mobile,
                          decoration: InputDecoration(
                            counterText: "",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            hintText: 'Mobile No.*',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: const Icon(
                                Icons.call,
                                color: Color(0xffF79F10),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 18, right: 18, top: 2),
                      child: TextFormField(
                          validator: (value) => validateEmail(value),
                          keyboardType: TextInputType.emailAddress,
                          controller: Email,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            hintText: 'Email.*',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: const Icon(
                                Icons.email,
                                color: Color(0xffF79F10),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 18, right: 18, top: 2),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Address*.';
                          }
                          return null;
                        },
                          keyboardType: TextInputType.streetAddress,
                          controller: Address,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding: EdgeInsets.all(18),
                            hintText: 'Address*',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: const Icon(
                                Icons.location_on,
                                color: Color(0xffF79F10),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter password*.';
                            }
                            return null;
                          },
                          controller: Password,
                          obscureText: _passwordVisible ? true : false,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            // contentPadding: EdgeInsets.only(top: 5),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xffF79F10),
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
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        )),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Padding(
                    //     padding: EdgeInsets.only(
                    //       left: 15,
                    //       right: 15,
                    //     ),
                    //     child: TextFormField(
                    //       validator: (value) {
                    //         if (value!.isEmpty) {
                    //           return 'Please Enter Confirm Password*.';
                    //         }
                    //         return null;
                    //       },
                    //       controller: ConfirmPassword,
                    //       keyboardType: TextInputType.text,
                    //       decoration: InputDecoration(
                    //         hintText: 'Confirm Password',
                    //         // contentPadding: EdgeInsets.only(top: 5),
                    //         prefixIcon: Icon(
                    //           Icons.email,
                    //           color: Color(0xffF79F10),
                    //         ),
                    //         border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(30),
                    //         ),
                    //         enabledBorder: OutlineInputBorder(
                    //           borderSide: BorderSide(
                    //             color: Colors.black38,
                    //           ),
                    //           borderRadius: BorderRadius.circular(30),
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //           borderSide: const BorderSide(
                    //             color: Colors.black38,
                    //           ),
                    //           borderRadius: BorderRadius.circular(30),
                    //         ),
                    //       ),
                    //     )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(color: Color(0xffF79F10), fontSize: 15),
                    )
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Save",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  print(imageFile?.path.toString());
                  print(FullName.text);
                  print(gender.text);
                  print(Mobile.text);
                  print(Email.text);
                  print(Address.text);
                  print(Password.text);
                   _signup();
                  if (_formKey.currentState!.validate()) {
                    print("Process data");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => bottom_avigationar()));
                  } else {
                    print('Error');
                  }
                },
              )
            ],
          ),
        )
      ),
    );
  }
  void _openGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxHeight: 200,
      maxWidth: 200,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxHeight: 200,
      maxWidth: 200,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }


}
