// import 'package:flutter/material.dart';
//
// import 'bottom_navigation_bar.dart';
//
// class ADS extends StatefulWidget {
//   const ADS({Key? key}) : super(key: key);
//
//   @override
//   State<ADS> createState() => _ADSState();
// }
//
// class _ADSState extends State<ADS> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//             backgroundColor: Colors.black87,
//             title: Center(
//               child: Text(
//                 'ADS',
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//             ),
//             leading: InkWell(
//               child: Container(
//                 margin: EdgeInsets.all(10),
//                 height: 20,
//                 width: 30,
//                 child: Icon(Icons.arrow_back_sharp),
//               ),
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => bottom_avigationar()));
//               },
//             )),
//         body: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           decoration: const BoxDecoration(
//               color: Colors.white,
//               gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [Color(0xFF7F7F7F), Color(0xFF4863A0)])),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 16.0),
//                 child: Row(
//                   children: [
//                     Text(
//                       "FREE ADS",
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 180,
//                 width: 330,
//                 child: Card(
//                   elevation: 8,
//                   shadowColor: const Color(0xFF793812),
//                   color: Color(0xFFD5D4D4),
//                   shape: RoundedRectangleBorder(
//                       // borderRadius: BorderRadius.circular(14),
//                       ),
//                   // child: Column(
//                   //   children: [
//                   //     SizedBox(
//                   //       height: 10,
//                   //     ),
//                   //     // Padding(
//                   //     //   padding: const EdgeInsets.only(left: 228.0),
//                   //     //   child: IconButton(
//                   //     //       onPressed: () async {
//                   //     //         // final urlPreview='https://www.youtube.com/watch?v=_0i1bllb0-Y';
//                   //     //         // await Share.share('\n\n$urlPreview');
//                   //     //       },
//                   //     //       icon: Icon(
//                   //     //         Icons.share,
//                   //     //         color: Colors.black,
//                   //     //       )),
//                   //     // )
//                   //   ],
//                   // ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Column(
//                 children: [
//                   Text(
//                     "Your Ad has been",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text("Posted Successfully.....",
//                       style: TextStyle(fontWeight: FontWeight.bold)),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
