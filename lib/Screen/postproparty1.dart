// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'bottom_navigation_bar.dart';
import 'owner.dart';

bool isClickGov = true;
bool isClickPrivate = false;
Color firstColor = Colors.black;
Color secondColor = Colors.black;
int id = 1;
int id1 = 1;
int id2 = 1;
int id3 = 1;
int id4 = 1;
int id5 = 1;
int id6 = 1;
int id7 = 1;
int id8 = 1;
int id9 = 1;
int id10 = 1;
int id11 = 1;
String radioButtonItem = 'A';
String radioButtonItem1 = 'A';
String radioButtonItem2 = 'A';
String radioButtonItem3 = 'A';
String radioButtonItem4 = 'A';
String radioButtonItem5 = 'A';
String radioButtonItem6 = 'A';
String radioButtonItem7 = 'A';
String radioButtonItem8 = 'A';
String radioButtonItem9 = 'A';
String radioButtonItem10 = 'A';
String radioButtonItem11 = 'A';
String textselect = 'Owner';
String textselect1 = 'Residential';
String textselect2 = 'Family';
String textselect3 = 'Hindu';
String textselect4 = '1BHK';
String textselect6 = 'Owner';
String textselect7 = 'Residential';
String textselect8 = 'Family';
String textselect9 = 'Hindu';
String textselect10 = '1BHK';


class PostProparty1 extends StatefulWidget {
  const PostProparty1({Key? key}) : super(key: key);

  @override
  _PostProparty1State createState() => _PostProparty1State();
}

class _PostProparty1State extends State<PostProparty1> {
  void showToast() {
    setState(() {
      isClickGov = !isClickGov;
    });
  }

  void showToastPrivate() {
    setState(() {
      isClickPrivate = !isClickPrivate;
    });
  }

  List<bool> isSelected = [false, false, false,false];
  List<bool> isSelected1 = [false, false, false,false];
  PickedFile? imageFile = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Padding(
            padding: const EdgeInsets.only(left: 80.0),
            child: Text(
              'List A Property',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          leading: InkWell(
            child: Container(
              // margin: EdgeInsets.all(10),
              height: 20,
              width: 30,
              child: Icon(Icons.arrow_back_sharp),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => bottom_avigationar()));
            },
          )
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF7F7F7F), Color(0xFF4863A0)])),
        child: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                children: [
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                        color: firstColor,),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Sell',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        firstColor = Colors.orangeAccent;
                        secondColor = Colors.black;
                        showToast();
                        showToastPrivate();
                        isClickGov = true;
                        isClickPrivate = false;
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                        color: secondColor,),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Rent ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        secondColor = Colors.orangeAccent;
                        firstColor = Colors.black;

                        showToastPrivate();
                        showToast();
                        isClickGov = false;
                        print("private");
                        isClickPrivate = true;
                      });
                    },
                  ),
                ],
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Visibility(
                visible: isClickGov,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                       // height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(color: Color(0xFFDCDFEB)),
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    child: ToggleButtons(
                                      isSelected: isSelected,
                                      selectedColor: Colors.white,
                                      color: Colors.black,
                                      fillColor: Colors.lightBlue.shade900,
                                      renderBorder: false,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12),
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  'assets/images/buildings.png',
                                                  height: 50,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  'Flats',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12),
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/plot.png',
                                                    height: 50,
                                                  ),
                                                  Text(
                                                    'Plots',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12),
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/room.png',
                                                    height: 50,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'Rooms',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12),
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            child: Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/home.png',
                                                    height: 50,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'House',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),


                                      ],
                                      onPressed: (int newIndex) {
                                        setState(() {
                                          for (int index = 0; index < isSelected.length; index++) {
                                            if (index == newIndex) {
                                              isSelected[index] = true;
                                            } else {
                                              isSelected[index] = false;
                                            }
                                          }
                                        });
                                      },
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text("OwnerShip Type",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,

                                child: Row(
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          'Owner',
                                          style: TextStyle(color: Colors.black, fontSize: 13,),
                                        ),
                                      ),
                                      onTap: () {

                                        // saveUserData("");
                                        setState(() {

                                        });
                                      },
                                    ),
                                    InkWell(
                                      child: Radio(
                                        value: 1,
                                        groupValue: id,
                                        onChanged: (val) {
                                          setState(() {
                                            textselect ="Owner";
                                            radioButtonItem = 'A';
                                            id = 1;
                                          });
                                        },
                                      ),
                                      onTap: (){
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        'Broker',
                                        style: new TextStyle(fontSize: 13.0,),
                                      ),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect ="Broker";
                                          radioButtonItem = 'B';
                                          id = 2;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        'Coloniser',
                                        style: new TextStyle(fontSize: 13.0),
                                      ),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect ="Coloniser";
                                          radioButtonItem = 'C';
                                          id = 3;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text("Property Type",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,

                                child: Row(
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          'Residential',
                                          style: TextStyle(color: Colors.black, fontSize: 12,),
                                        ),
                                      ),
                                      onTap: () {

                                        // saveUserData("");
                                        setState(() {

                                        });
                                      },
                                    ),
                                    InkWell(
                                      child: Radio(
                                        value: 1,
                                        groupValue: id1,
                                        onChanged: (val) {
                                          setState(() {
                                            textselect1 ="Residential";
                                            radioButtonItem1 = 'A';
                                            id1 = 1;
                                          });
                                        },
                                      ),
                                      onTap: (){

                                      },
                                    ),

                                    Text(
                                      'Commercial',
                                      style: new TextStyle(fontSize: 12.0,),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id1,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect1 ="Commercial";
                                          radioButtonItem1 = 'B';
                                          id1 = 2;
                                        });
                                      },
                                    ),

                                    Text(
                                      'Industrial',
                                      style: new TextStyle(fontSize: 12.0),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id1,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect1 ="Industrial";
                                          radioButtonItem1 = 'C';
                                          id1 = 3;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text("Tenant",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,

                                child: Row(
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          'Family',
                                          style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                        ),
                                      ),
                                      onTap: () {

                                        // saveUserData("");
                                        setState(() {

                                        });
                                      },
                                    ),
                                    Radio(
                                      value: 1,
                                      groupValue: id2,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect2 ="Family";
                                          radioButtonItem2 = 'A';
                                          id2 = 1;
                                        });
                                      },
                                    ),

                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        'Student',
                                        style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                      ),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id2,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect2 ="Student";
                                          radioButtonItem2 = 'B';
                                          id2 = 2;
                                        });
                                      },
                                    ),

                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        'Bachelor',
                                        style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                      ),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id2,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect2 ="Bachelor";
                                          radioButtonItem2 = 'C';
                                          id2 = 3;
                                        });
                                      },
                                    ),


                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [Text("Preferred Religion",
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14))],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,

                                child: Row(
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          'Hindu',
                                          style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                        ),
                                      ),
                                      onTap: () {

                                        // saveUserData("");
                                        setState(() {

                                        });
                                      },
                                    ),
                                    Radio(
                                      value: 1,
                                      groupValue: id3,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect3 ="Hindu";
                                          radioButtonItem3 = 'A';
                                          id3 = 1;
                                        });
                                      },
                                    ),

                                    Text(
                                      'Muslim',
                                      style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id3,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect3 ="Muslim";
                                          radioButtonItem3 = 'B';
                                          id3 = 2;
                                        });
                                      },
                                    ),

                                    Text(
                                      'Christian',
                                      style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id3,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect3 ="Christian";
                                          radioButtonItem3 = 'C';
                                          id3 = 3;
                                        });
                                      },
                                    ),

                                    Text(
                                      'Other',
                                      style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                    ),
                                    Radio(
                                      value: 4,
                                      groupValue: id3,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect3 ="Other";
                                          radioButtonItem3 = 'D';
                                          id3 = 4;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [Text("Flats",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14))],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,

                                child: Row(
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          '1BHK',
                                          style: TextStyle(color: Colors.black, fontSize: 13.0,),
                                        ),
                                      ),
                                      onTap: () {

                                        // saveUserData("");
                                        setState(() {

                                        });
                                      },
                                    ),
                                    Radio(
                                      value: 1,
                                      groupValue: id4,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect4 ="1BHK";
                                          radioButtonItem4 = 'A';
                                          id4 = 1;
                                        });
                                      },
                                    ),

                                    Text(
                                      '2BHK',
                                      style: TextStyle(color: Colors.black, fontSize: 13.0,),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id4,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect4 ="2BHK";
                                          radioButtonItem4 = 'B';
                                          id4 = 2;
                                        });
                                      },
                                    ),

                                    Text(
                                      '3BHK',
                                      style: TextStyle(color: Colors.black, fontSize: 13.0,),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id4,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect4 ="3BHK";
                                          radioButtonItem4 = 'C';
                                          id4 = 3;
                                        });
                                      },
                                    ),

                                    Text(
                                      '4BHK',
                                      style: TextStyle(color: Colors.black, fontSize: 13.0,),
                                    ),
                                    Radio(
                                      value: 4,
                                      groupValue: id4,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect4 ="4BHK";
                                          radioButtonItem4 = 'D';
                                          id4 = 4;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text("Budget",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          'Under 10,000',
                                          style: TextStyle(color: Colors.black, fontSize: 10.0,),
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {

                                        });
                                      },
                                    ),
                                    Radio(
                                      value: 1,
                                      groupValue: id5,
                                      onChanged: (val) {
                                        setState(() {
                                          radioButtonItem5 = 'A';
                                          id5 = 1;
                                        });
                                      },
                                    ),
                                    Text(
                                      '10,000-15,000',
                                      style: new TextStyle(fontSize: 10.0,),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id5,
                                      onChanged: (val) {
                                        setState(() {
                                          radioButtonItem5 = 'B';
                                          id5 = 2;
                                        });
                                      },
                                    ),
                                    Text(
                                      'Above 15,000',
                                      style: new TextStyle(fontSize: 10.0),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id5,
                                      onChanged: (val) {
                                        setState(() {
                                          radioButtonItem5 = 'C';
                                          id5 = 3;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                               height: 233,
                              child:  Column(
                                children: [
                                  MaterialButton(
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Container(
                                              height: 80,
                                              width: 80,
                                              child: Icon(Icons.camera_alt,size: 40,)
                                          ),
                                          SizedBox(width: 40,),
                                          Text("Pick Images from Gallery",
                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                        ],
                                      ),
                                      onPressed: () {
                                        selectImages();
                                      }
                                  ),


                                  //SizedBox(height: 10,),
                                  Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GridView.builder(
                                            itemCount: imageFileList!.length,
                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3
                                            ),
                                            itemBuilder: (BuildContext context, int index) {
                                              return Image.file(File(imageFileList![index].path), fit: BoxFit.cover);
                                            }
                                        ),
                                      )
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Property Name',
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        autofocus: false,
                                        // controller: name,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Full Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "City",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "House No.",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Area",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "State",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Pin Code",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "contact details",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: Card(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: Center(
                                    child: Row(
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'POST AD',
                                          style: TextStyle(
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.indigo,
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Owner()),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Visibility(
                visible: isClickPrivate,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                       // height: MediaQuery.of(context).size.height * 2,
                        decoration: BoxDecoration(color: Color(0xFFDCDFEB)),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        child: ToggleButtons(
                                          isSelected: isSelected1,
                                          selectedColor: Colors.white,
                                          color: Colors.black,
                                          fillColor: Colors.lightBlue.shade900,
                                          renderBorder: false,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 12),
                                              child: Container(
                                                height: 100,
                                                width: 100,
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/buildings.png',
                                                      height: 50,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      'Flats',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 12),
                                              child: Container(
                                                height: 100,
                                                width: 100,
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/home.png',
                                                        height: 50,
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'House',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 12),
                                              child: Container(
                                                height: 100,
                                                width: 100,
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/room.png',
                                                        height: 50,
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'Rooms',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 12),
                                              child: Container(
                                                height: 100,
                                                width: 100,
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/plot.png',
                                                        height: 50,
                                                      ),
                                                      Text(
                                                        'Plots',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          onPressed: (int newIndex) {
                                            setState(() {
                                              for (int index = 0; index < isSelected1.length; index++) {
                                                if (index == newIndex) {
                                                  isSelected1[index] = true;
                                                } else {
                                                  isSelected1[index] = false;
                                                }
                                              }
                                            });
                                          },
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text("OwnerShip Type",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,

                                child: Row(
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          'Owner',
                                          style: TextStyle(color: Colors.black, fontSize: 13,),
                                        ),
                                      ),
                                      onTap: () {

                                        // saveUserData("");
                                        setState(() {

                                        });
                                      },
                                    ),
                                    InkWell(
                                      child: Radio(
                                        value: 1,
                                        groupValue: id,
                                        onChanged: (val) {
                                          setState(() {
                                            textselect ="Owner";
                                            radioButtonItem = 'A';
                                            id = 1;
                                          });
                                        },
                                      ),
                                      onTap: (){
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        'Broker',
                                        style: new TextStyle(fontSize: 13.0,),
                                      ),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect ="Broker";
                                          radioButtonItem = 'B';
                                          id = 2;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        'Coloniser',
                                        style: new TextStyle(fontSize: 13.0),
                                      ),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect ="Coloniser";
                                          radioButtonItem = 'C';
                                          id = 3;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text("Property Type",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,

                                child: Row(
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          'Residential',
                                          style: TextStyle(color: Colors.black, fontSize: 12,),
                                        ),
                                      ),
                                      onTap: () {

                                        // saveUserData("");
                                        setState(() {

                                        });
                                      },
                                    ),
                                    InkWell(
                                      child: Radio(
                                        value: 1,
                                        groupValue: id1,
                                        onChanged: (val) {
                                          setState(() {
                                            textselect1 ="Residential";
                                            radioButtonItem1 = 'A';
                                            id1 = 1;
                                          });
                                        },
                                      ),
                                      onTap: (){

                                      },
                                    ),

                                    Text(
                                      'Commercial',
                                      style: new TextStyle(fontSize: 12.0,),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id1,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect1 ="Commercial";
                                          radioButtonItem1 = 'B';
                                          id1 = 2;
                                        });
                                      },
                                    ),

                                    Text(
                                      'Industrial',
                                      style: new TextStyle(fontSize: 12.0),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id1,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect1 ="Industrial";
                                          radioButtonItem1 = 'C';
                                          id1 = 3;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text("Tenant",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,

                                child: Row(
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          'Family',
                                          style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                        ),
                                      ),
                                      onTap: () {

                                        // saveUserData("");
                                        setState(() {

                                        });
                                      },
                                    ),
                                    Radio(
                                      value: 1,
                                      groupValue: id2,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect2 ="Family";
                                          radioButtonItem2 = 'A';
                                          id2 = 1;
                                        });
                                      },
                                    ),

                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        'Student',
                                        style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                      ),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id2,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect2 ="Student";
                                          radioButtonItem2 = 'B';
                                          id2 = 2;
                                        });
                                      },
                                    ),

                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        'Bachelor',
                                        style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                      ),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id2,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect2 ="Bachelor";
                                          radioButtonItem2 = 'C';
                                          id2 = 3;
                                        });
                                      },
                                    ),


                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [Text("Preferred Religion",
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14))],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,

                                child: Row(
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          'Hindu',
                                          style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                        ),
                                      ),
                                      onTap: () {

                                        // saveUserData("");
                                        setState(() {

                                        });
                                      },
                                    ),
                                    Radio(
                                      value: 1,
                                      groupValue: id3,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect3 ="Hindu";
                                          radioButtonItem3 = 'A';
                                          id3 = 1;
                                        });
                                      },
                                    ),

                                    Text(
                                      'Muslim',
                                      style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id3,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect3 ="Muslim";
                                          radioButtonItem3 = 'B';
                                          id3 = 2;
                                        });
                                      },
                                    ),

                                    Text(
                                      'Christian',
                                      style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id3,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect3 ="Christian";
                                          radioButtonItem3 = 'C';
                                          id3 = 3;
                                        });
                                      },
                                    ),

                                    Text(
                                      'Other',
                                      style: TextStyle(color: Colors.black, fontSize: 12.0,),
                                    ),
                                    Radio(
                                      value: 4,
                                      groupValue: id3,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect3 ="Other";
                                          radioButtonItem3 = 'D';
                                          id3 = 4;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [Text("Flats",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14))],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,

                                child: Row(
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          '1BHK',
                                          style: TextStyle(color: Colors.black, fontSize: 13.0,),
                                        ),
                                      ),
                                      onTap: () {

                                        // saveUserData("");
                                        setState(() {

                                        });
                                      },
                                    ),
                                    Radio(
                                      value: 1,
                                      groupValue: id4,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect4 ="1BHK";
                                          radioButtonItem4 = 'A';
                                          id4 = 1;
                                        });
                                      },
                                    ),

                                    Text(
                                      '2BHK',
                                      style: TextStyle(color: Colors.black, fontSize: 13.0,),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id4,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect4 ="2BHK";
                                          radioButtonItem4 = 'B';
                                          id4 = 2;
                                        });
                                      },
                                    ),

                                    Text(
                                      '3BHK',
                                      style: TextStyle(color: Colors.black, fontSize: 13.0,),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id4,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect4 ="3BHK";
                                          radioButtonItem4 = 'C';
                                          id4 = 3;
                                        });
                                      },
                                    ),

                                    Text(
                                      '4BHK',
                                      style: TextStyle(color: Colors.black, fontSize: 13.0,),
                                    ),
                                    Radio(
                                      value: 4,
                                      groupValue: id4,
                                      onChanged: (val) {
                                        setState(() {
                                          textselect4 ="4BHK";
                                          radioButtonItem4 = 'D';
                                          id4 = 4;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text("Budget",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                color: Colors.white,
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    InkWell(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          'Under 10,000',
                                          style: TextStyle(color: Colors.black, fontSize: 10.0,),
                                        ),
                                      ),
                                      onTap: () {
                                        setState(() {

                                        });
                                      },
                                    ),
                                    Radio(
                                      value: 1,
                                      groupValue: id5,
                                      onChanged: (val) {
                                        setState(() {
                                          radioButtonItem5 = 'A';
                                          id5 = 1;
                                        });
                                      },
                                    ),
                                    Text(
                                      '10,000-15,000',
                                      style: new TextStyle(fontSize: 10.0,),
                                    ),
                                    Radio(
                                      value: 2,
                                      groupValue: id5,
                                      onChanged: (val) {
                                        setState(() {
                                          radioButtonItem5 = 'B';
                                          id5 = 2;
                                        });
                                      },
                                    ),
                                    Text(
                                      'Above 15,000',
                                      style: new TextStyle(fontSize: 10.0),
                                    ),
                                    Radio(
                                      value: 3,
                                      groupValue: id5,
                                      onChanged: (val) {
                                        setState(() {
                                          radioButtonItem5 = 'C';
                                          id5 = 3;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 233,
                              child:  Column(
                                children: [
                                  MaterialButton(
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Container(
                                              height: 80,
                                              width: 80,
                                              child: Icon(Icons.camera_alt,size: 40,)
                                          ),
                                          SizedBox(width: 40,),
                                          Text("Pick Images from Gallery",
                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                        ],
                                      ),
                                      onPressed: () {
                                        selectImages();
                                      }
                                  ),
                                  Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GridView.builder(
                                            itemCount: imageFileList!.length,
                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3
                                            ),
                                            itemBuilder: (BuildContext context, int index) {
                                              return Image.file(File(imageFileList![index].path), fit: BoxFit.cover);
                                            }
                                        ),
                                      )
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Property Name',
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        autofocus: false,
                                        // controller: name,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Full Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "City",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "House No.",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Area",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "State",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Pin Code",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "contact details",
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.06,
                                child: Card(
                                  // elevation: 12,
                                  // shadowColor: Color(0xFF793812),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 18.0),
                                    child: Center(
                                      child: TextField(
                                        // controller: fatherName,
                                        keyboardType: TextInputType.emailAddress,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          // hintText: "Father's Name",
                                          contentPadding: EdgeInsets.all(6),
                                          focusColor: Color(0xFFE26921),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: Card(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: Center(
                                    child: Row(
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'POST AD',
                                          style: TextStyle(
                                              color: Colors.indigo,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.indigo,
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Owner()),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showBottomsheet() {}
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    setState(() {
    });
  }
}
