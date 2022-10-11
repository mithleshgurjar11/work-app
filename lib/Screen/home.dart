// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:property_buy_seller/Screen/postproparty1.dart';

import 'package:property_buy_seller/authentication/login_page.dart';
import 'package:property_buy_seller/drawer/privacy_&_policy.dart';
import 'package:property_buy_seller/drawer/saved_searches.dart';

import '../drawer/about_us.dart';
import '../drawer/my_listing.dart';
import 'add_property.dart';
import 'bottom_navigation_bar.dart';
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
          appBar: AppBar(
              backgroundColor: Colors.black87,
              title: Center(
                child: Text(
                  'Buy',
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
                  SizedBox(
                    height: 30,
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
}
