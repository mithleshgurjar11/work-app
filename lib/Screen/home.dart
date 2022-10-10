import 'package:flutter/material.dart';
import 'package:property_buy_seller/Screen/postproparty1.dart';

import 'package:property_buy_seller/authentication/login_page.dart';
import 'package:property_buy_seller/drawer/privacy_&_policy.dart';
import 'package:property_buy_seller/drawer/saved_searches.dart';

import '../drawer/about_us.dart';
import '../drawer/my_listing.dart';
import 'add_property.dart';
import 'chirag_dehi_page.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.filter_alt_sharp,
                  size: 26,
                ),
                onPressed: () {},
              ),
            ],
          ),
          drawer: openDrawer(context),
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
                child: Column(children: [
                  Container(
                    //  height: 200,
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              Text(
                                "Explore real estate in",
                                style: TextStyle(color: Colors.white54),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "Chhatarpur",
                                style: TextStyle(color: Colors.indigo),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15, right: 5, top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                //borderRadius: new BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                  suffixIcon:
                                      Icon(Icons.search, color: Colors.black),
                                  border: InputBorder.none,
                                  labelText: 'What Are You Looking For',
                                )),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: Text(
                                'Buy',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) => Buy()));
                              // },
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            InkWell(
                              child: Text(
                                'Sell',
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddProperty()));
                              },
                            ),
                    
                          ],
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                    Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.25,
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/favorites.jpeg',
                                        height: 90,
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '5 BHK Builder floor',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '30 Lac | 1110 sqft',
                                          style: TextStyle(
                                              color: Colors.indigo, fontSize: 14),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Chirag Delhi New Delhi',
                                          style: TextStyle(
                                              color:
                                              Colors.black.withOpacity(0.6),
                                              fontSize: 12),
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ready To move',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 12),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child:
                                                Icon(Icons.favorite_border),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChiragDehi()));
                              },
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ])),
          )),
    );
  }

  Widget openDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF4863A0),
            ),
            child: Padding(
              padding: EdgeInsets.only(right: 0),
              child: InkWell(
                // onTap: () {
                //   Navigator.push(context,
                //    //   MaterialPageRoute(builder: (context) => MyProfile())
                //   );
                // },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/profile.png",
                          height: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Johan Deo",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                InkWell(
                                    // onTap: () {
                                    //   Navigator.push(
                                    //       context,
                                    //       MaterialPageRoute(
                                    //           builder: (context) =>
                                    //               MyProfile()));
                                    // },
                                    child: Image(
                                        image: AssetImage(
                                          'assets/images/edit.png',
                                        ),
                                        height: 18)),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Johandeo@gmail.com',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            // leading: Image.asset(
            //   "assets/images/home0.png",
            //   height: 24,
            // ),
            title: Text(' Home '),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            // leading: Icon(
            //   Icons.home,
            //   color: Colors.black,
            // ),
            leading: Image.asset(
              "assets/images/abouts2.png",color: Colors.black,
              height: 24,
            ),
            title: Text(' About Us '),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AboutUs()));
            },
          ),

          ListTile(
            leading: Icon(
              Icons.policy_outlined,
              color: Colors.black,
            ),
            // leading: Image.asset(
            //   "assets/images/home0.png",
            //   height: 24,
            // ),
            title: Text(' Privacy & Policy '),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PrivacyAndPolicy()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.save,
              color: Colors.black,
            ),
            // leading: Image.asset(
            //   "assets/images/home0.png",
            //   height: 24,
            // ),
            title: Text(' Saved Searches '),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SavedSearches()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.list_alt_rounded,
              color: Colors.black,
            ),
            // leading: Image.asset(
            //   "assets/images/home0.png",
            //   height: 24,
            // ),
            title: Text(' My Listing '),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyListing()));
            },
          ),

          Padding(
            padding: const EdgeInsets.only(top: 310),
            child: Container(
              height: 55,
              width: 250,
              color: Colors.orange,

              child: ListTile(
                leading: Image.asset(
                  "assets/images/logout.png",
                  color: Colors.black,
                  height: 24,
                ),
                title: InkWell(
                  child: Text(
                    'Logout',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                onTap: () {
                  print("logout");
                  // _isShown == true ? () => _delete(context) : null;
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text("Dialog"),
                      content: Text("Do you want to exit this application?"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Container(
                              child: Row(
                                children: [
                                  Text("No", style: TextStyle(fontSize: 20)),
                                  Spacer(),
                                  InkWell(
                                    child: Text(
                                      "Yes",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => LoginPage()));
                                    },
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
