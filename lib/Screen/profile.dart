// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';
import 'color.dart';
import 'contact_us.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Padding(
            padding: EdgeInsets.only(left: 110.0),
            child: Text(
              'Profile',
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => bottom_avigationar()));
            },
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/profile.png",height: 150,)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Johan Deo",style: TextStyle(fontSize: 20,color: Colors.black),)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Vijay Nagar Indore ",style: TextStyle(fontSize: 20,color: Colors.grey),)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                          child: Text(
                            "Message",
                            style: TextStyle(
                                fontSize: 20,color: Colors.white),
                          ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactUs()));
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("5",style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Property",style: TextStyle(fontSize: 20))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: colors.whitebase,
                        ),
                        // width: MediaQuery.of(context).size.width,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset("assets/images/room1.jpg",height: 150,width: 150,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "₹ 10000,2000",
                                      style: TextStyle(
                                          color: Colors.black,fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "Vijay Nagar Indore 452010",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "3 bds",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 18),
                                        ),
                                        Divider(),
                                        Text(
                                          "2 baths",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 18),
                                        ),
                                        Divider(),
                                        Text(
                                          "1,757 sqft",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "House for Sale",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        FavoriteButton(
                                          isFavorite: true,
                                          valueChanged: (_isFavorite) {
                                            print('Is Favorite : $_isFavorite');
                                          },
                                        ),
                                        // Icon(Icons.favorite_border)
                                      ],
                                    ),
                                  ],
                                ),


                              ],)
                        ),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
