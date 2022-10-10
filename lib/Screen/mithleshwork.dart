// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
// import 'bottom_navigation_bar.dart';
// import 'color.dart';
//
//
// class Introslider extends StatefulWidget {
//   const Introslider({Key? key}) : super(key: key);
//
//   @override
//   State<Introslider> createState() => _IntrosliderState();
// }
//
// class _IntrosliderState extends State<Introslider> {
//   PageController? _pageController;
//   int currentIndex = 0;
//
//   static const _kDuration = const Duration(milliseconds: 300);
//   static const _kCurve = Curves.ease;
//
//   nextFunction() {
//     _pageController?.nextPage(duration: _kDuration, curve: _kCurve);
//     if (currentIndex == 2) {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => bottom_avigationar()));
//     }
//   }
//
//   onChangedFunction(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//   }
//
//   @override
//   void dispose() {
//     _pageController!.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Text(""),
//
//         ),
//         body: Stack(
//           children: [
//             PageView(
//               onPageChanged: onChangedFunction,
//               controller: _pageController,
//               children: [
//                 Container(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 38.0, top: 10),
//                           child: Row(
//                             //  mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text("Basic Info",
//                                 style: TextStyle(fontSize: 20),),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               Text("Address", style: TextStyle(fontSize: 20)),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               Text("Photos", style: TextStyle(fontSize: 20)),
//                             ],
//                           ),
//                         ),
//                         Divider(),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 28.0),
//                           child: Row(
//                             children: [
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("Indicates a Mandatory Field", style:
//                               TextStyle(
//                                   fontSize: 20, color: Colors.grey.shade500),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Text("I Want To",
//                                   style: TextStyle(fontSize: 20,)),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 40,
//                                 width: 130,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   border: Border.all(color: Colors.grey),
//                                 ),
//                                 child: Center(child: Text("Residential",
//                                   style: TextStyle(fontSize: 18,
//                                       color: Colors.grey.shade500),)),
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Container(
//                                 height: 40,
//                                 width: 130,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   border: Border.all(color: Colors.grey),
//                                 ),
//                                 child: Center(child: Text("Residential",
//                                   style: TextStyle(fontSize: 18,
//                                       color: Colors.grey.shade500),)),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Text("I Want To", style: TextStyle(
//                                   fontSize: 20, color: Colors.black)),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 40,
//                                 width: 80,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   border: Border.all(color: Colors.grey),
//                                 ),
//                                 child: Center(child: Text("Rent",
//                                   style: TextStyle(fontSize: 18,
//                                       color: Colors.grey.shade500),)),
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Container(
//                                 height: 40,
//                                 width: 80,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   border: Border.all(color: Colors.grey),
//                                 ),
//                                 child: Center(child: Text("Sell",
//                                   style: TextStyle(fontSize: 18,
//                                       color: Colors.grey.shade500),)),
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Container(
//                                 height: 40,
//                                 width: 140,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   border: Border.all(color: Colors.grey),
//                                 ),
//                                 child: Center(child: Text("PG/Co-living",
//                                   style: TextStyle(fontSize: 18,
//                                       color: Colors.grey.shade500),)),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Text("Property Type", style: TextStyle(
//                                   fontSize: 20, color: Colors.black)),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 130,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("Apartment",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 20,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 150,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text(
//                                       "Indepandent Floor", style: TextStyle(
//                                         fontSize: 18,
//                                         color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 20,
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 160,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text(
//                                       "Indepandent House", style: TextStyle(
//                                         fontSize: 18,
//                                         color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 20,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("Villa",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 20,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("Plot",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 150,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text(
//                                       "Agricultural Land", style: TextStyle(
//                                         fontSize: 18,
//                                         color: Colors.grey.shade500),)),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Text("Construction Status", style: TextStyle(
//                                   fontSize: 20, color: Colors.black)),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 40,
//                                 width: 150,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   border: Border.all(color: Colors.grey),
//                                 ),
//                                 child: Center(child: Text("Ready To Move",
//                                   style: TextStyle(fontSize: 18,
//                                       color: Colors.grey.shade500),)),
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Container(
//                                 height: 40,
//                                 width: 170,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   border: Border.all(color: Colors.grey),
//                                 ),
//                                 child: Center(child: Text("Under Construction",
//                                   style: TextStyle(fontSize: 18,
//                                       color: Colors.grey.shade500),)),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Text("BHK", style: TextStyle(
//                                   fontSize: 20, color: Colors.black)),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("1 BHK",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("2 BHK",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("3 BHK",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("4 BHK",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                 ],
//                               ),
//
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Text("Bathroom", style: TextStyle(
//                                   fontSize: 20, color: Colors.black)),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("0",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("1",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("2",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("3",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("4",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                 ],
//                               ),
//
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Text("Balcony", style: TextStyle(
//                                   fontSize: 20, color: Colors.black)),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("0",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("1",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("2",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("3",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("4",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                 ],
//                               ),
//
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Text("Furnish Type", style: TextStyle(
//                                   fontSize: 20, color: Colors.black)),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 18.0),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 150,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("Full Furnished",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 20,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 170,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("Semi Furnished",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 170,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("Unfurnished",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Text("Covered Parking", style: TextStyle(
//                                   fontSize: 20, color: Colors.black)),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("0",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("1",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("2",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("3",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("4",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("5",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                 ],
//                               ),
//
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Row(
//                             children: [
//                               Text("Open Parking", style: TextStyle(
//                                   fontSize: 20, color: Colors.black)),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 18.0),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("0",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("1",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("2",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("3",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("4",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Container(
//                                     height: 40,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.grey),
//                                     ),
//                                     child: Center(child: Text("5",
//                                       style: TextStyle(fontSize: 18,
//                                           color: Colors.grey.shade500),)),
//                                   ),
//                                 ],
//                               ),
//
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: EdgeInsets.only(left: 10.0),
//                           child: TextFormField(
//                               decoration: InputDecoration(
//                                 labelText: 'Cost',
//                                 labelStyle: TextStyle(
//                                     color: Colors.grey.shade500,
//                                     fontStyle: FontStyle.italic, fontSize: 20),
//                                 hintText: '₹',
//
//                               )),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: EdgeInsets.only(left: 10.0),
//                           child: TextFormField(
//                               decoration: InputDecoration(
//                                 labelText: 'Maintenance Charges (Per Month)',
//                                 labelStyle: TextStyle(
//                                     color: Colors.grey.shade500,
//                                     fontStyle: FontStyle.italic, fontSize: 20),
//                                 hintText: '₹',
//                               )),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: EdgeInsets.only(left: 10.0),
//                           child: TextFormField(
//                               decoration: InputDecoration(
//                                 labelText: 'Built Up Area',
//                                 labelStyle: TextStyle(
//                                     color: Colors.grey.shade500,
//                                     fontStyle: FontStyle.italic, fontSize: 20),
//                                 hintText: 'Sq. ft.',
//                               )),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: EdgeInsets.only(left: 10.0),
//                           child: TextFormField(
//                               decoration: InputDecoration(
//                                 labelText: 'Carpet Area (Optional)',
//                                 labelStyle: TextStyle(
//                                     color: Colors.grey.shade500,
//                                     fontStyle: FontStyle.italic, fontSize: 20),
//                                 hintText: 'Sq. ft.',
//                               )),
//                         ),
//                         SizedBox(height: 40,),
//
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 38.0, top: 10),
//                           child: Row(
//                             //  mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text("Basic Info",
//                                 style: TextStyle(fontSize: 20),),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               Text("Address", style: TextStyle(fontSize: 20)),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               Text("Photos", style: TextStyle(fontSize: 20)),
//                             ],
//                           ),
//                         ),
//                         Divider(),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 28.0),
//                           child: Row(
//                             children: [
//                               Text("*", style: TextStyle(
//                                   color: Colors.red, fontSize: 24),),
//                               SizedBox(
//                                 width: 3,
//                               ),
//                               Text("Indicates a Mandatory Field", style:
//                               TextStyle(
//                                   fontSize: 20, color: Colors.grey.shade500),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: EdgeInsets.only(left: 10.0),
//                           child: TextFormField(
//                               decoration: InputDecoration(
//                                 labelText: 'City Here',
//                                 labelStyle: TextStyle(
//                                     color: Colors.grey.shade500,
//                                     fontStyle: FontStyle.italic, fontSize: 20),
//                               )),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: EdgeInsets.only(left: 10.0),
//                           child: TextFormField(
//                               decoration: InputDecoration(
//                                 labelText: 'Building/Project/Society(Mandatory)',
//                                 labelStyle: TextStyle(
//                                     color: Colors.grey.shade500,
//                                     fontStyle: FontStyle.italic, fontSize: 20),
//                               )),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: EdgeInsets.only(left: 10.0),
//                           child: TextFormField(
//                               decoration: InputDecoration(
//                                 labelText: 'Locality',
//                                 labelStyle: TextStyle(
//                                     color: Colors.grey.shade500,
//                                     fontStyle: FontStyle.italic, fontSize: 20),
//                               )),
//                         ),
//                         SizedBox(height: 40,),
//                         Padding(
//                           padding: EdgeInsets.only(left: 10.0),
//                           child: Row(
//                             children: [
//                               Container(
//                                 width: 100,
//                                 child: TextFormField(
//                                     decoration: InputDecoration(
//                                       labelText: 'Flat No',
//                                       labelStyle: TextStyle(
//                                           color: Colors.grey.shade500,
//                                           fontStyle: FontStyle.italic,
//                                           fontSize: 20),
//                                     )),
//                               ),
//                               SizedBox(
//                                 width: 30,
//                               ),
//                               Container(
//                                 width: 100,
//                                 child: TextFormField(
//                                     decoration: InputDecoration(
//                                       labelText: 'Floor No',
//                                       labelStyle: TextStyle(
//                                           color: Colors.grey.shade500,
//                                           fontStyle: FontStyle.italic,
//                                           fontSize: 20),
//                                     )),
//                               ),
//                               SizedBox(
//                                 width: 30,
//                               ),
//                               Container(
//                                 width: 100,
//                                 child: TextFormField(
//                                     decoration: InputDecoration(
//                                       labelText: 'Total Floors',
//                                       labelStyle: TextStyle(
//                                           color: Colors.grey.shade500,
//                                           fontStyle: FontStyle.italic,
//                                           fontSize: 20),
//                                     )),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 38.0, top: 10),
//                           child: Row(
//                             //  mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text("Basic Info",
//                                 style: TextStyle(fontSize: 20),),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               Text("Address", style: TextStyle(fontSize: 20)),
//                               SizedBox(
//                                 width: 60,
//                               ),
//                               Text("Photos", style: TextStyle(fontSize: 20)),
//                             ],
//                           ),
//                         ),
//                         Divider(),
//                         Container(
//                           height: MediaQuery.of(context).size.height * 0.5,
//                           child: Column(
//                             children: [
//                               MaterialButton(
//                                   color: Colors.white,
//                                   child: Row(
//                                     children: [
//                                       Container(
//                                           height: 80,
//                                           width: 80,
//                                           child: Icon(
//                                             Icons.camera_alt, size: 40,)
//                                       ),
//                                       SizedBox(width: 40,),
//                                       Text("Pick Images from Gallery",
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 14),),
//                                     ],
//                                   ),
//                                   onPressed: () {
//                                     selectImages();
//                                   }
//                               ),
//                               Expanded(
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: GridView.builder(
//                                         itemCount: imageFileList!.length,
//                                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                                             crossAxisCount: 3
//                                         ),
//                                         itemBuilder: (BuildContext context,
//                                             int index) {
//                                           return Image.file(
//                                               File(imageFileList![index].path),
//                                               fit: BoxFit.cover);
//                                         }
//                                     ),
//                                   )
//                               )
//                             ],
//                           ),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Positioned(
//               bottom: 0,
//               //right: 146,
//               child: Container(
//                 child: Row(
//                   //mainAxisSize: MainAxisSize.max,
//                   children: <Widget>[
//                     InkWell(
//                         onTap: () => nextFunction(),
//                         child: Container(
//                           height: 60,
//                           width: MediaQuery
//                               .of(context)
//                               .size
//                               .width,
//                           decoration: BoxDecoration(color: Colors.greenAccent),
//                           child: currentIndex == 0
//                               ? Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 24),))
//                               : currentIndex == 1
//                               ? Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 24)))
//                               : Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 24))),
//                         ))
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ));
//   }
//
//   Widget Pages({images,
//     title,
//     content,
//     indicators,
//     button,
//     reverse = false,
//     pageIndex}) {
//     return SingleChildScrollView(
//       child: Container(
//         child: Padding(
//           padding:  EdgeInsets.all(20),
//           child: Column(
//             children: [
//               !reverse
//                   ? Container(
//                 child: Image.asset(
//                   images,
//                   height: 500,
//                   width: 500,
//                 ),
//                 height: MediaQuery
//                     .of(context)
//                     .size
//                     .height * 0.4,
//                 width: MediaQuery
//                     .of(context)
//                     .size
//                     .width,
//               )
//                   : const SizedBox(),
//               Container(
//                 child: Text(
//                   title,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                       fontSize: 20,
//                       fontFamily: 'Helvetica Neue LT Pro',
//                       fontWeight: FontWeight.w600,
//                       color: colors.primary),
//                 ),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               Container(
//                 child: Text(
//                   content,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                       fontSize: 12,
//                       fontFamily: 'Helvetica Neue LT Pro',
//                       // fontWeight: FontWeigh,
//                       color: colors.black54),
//                 ),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               // Padding(
//               //   padding: const EdgeInsets.all(8.0),
//               //   child: Image.asset(indicators,
//               //   width: 50,
//               //   height: 10,),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   void showBottomsheet() {}
//   final ImagePicker imagePicker = ImagePicker();
//   List<XFile>? imageFileList = [];
//
//   void selectImages() async {
//     final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
//     if (selectedImages!.isNotEmpty) {
//       imageFileList!.addAll(selectedImages);
//     }
//   }
// }
// class Indicator extends StatelessWidget {
//   int? positionIndex, currentIndex;
//   Indicator({this.currentIndex, this.positionIndex});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 3,
//       width: currentIndex == positionIndex ? 20 : 10,
//       decoration: BoxDecoration(
//         color: positionIndex == currentIndex ? colors.secondary : Colors.grey,
//       ),
//     );
//   }
// }
