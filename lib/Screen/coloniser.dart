
import 'package:flutter/material.dart';
import 'package:property_buy_seller/Screen/postproparty1.dart';
//String _counter ="";
class Coloniser extends StatefulWidget {
  const Coloniser({Key? key}) : super(key: key);

  @override
  State<Coloniser> createState() => _ColoniserState();
}

class _ColoniserState extends State<Coloniser> {
  // void loadCounter() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     _counter = (prefs.getString('counter'))!;
  //   });
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   loadCounter();
  // }
  // SharedPreferences sharedPreferences = SharedPreferences.getInstance() as SharedPreferences;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Center(
            child: Text("Subscription",
             // '${_counter.toString()}',
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
                      builder: (context) => PostProparty1()));
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 200,
                    child: Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 38.0),
                          child: Text("Basic",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          width: 34,
                        ),
                        Container(
                          width: 2,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "25000 INR/-",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,color: Colors.white,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 48.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "6 Month",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,color: Colors.white,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 54.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Photos",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,color: Colors.white,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Specifications",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,color: Colors.white,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 56.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Call No",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,color: Colors.white,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 34.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Other Like",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,color: Colors.white,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.cyan,
                                      borderRadius: BorderRadius.circular(0)
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Proceed",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PostProparty1()));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.black,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 200,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Text("Platinum",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,color: Colors.white,
                                  fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "(Recommend)",
                                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white,),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: 2,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 70),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "50,000 INR/-",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,color: Colors.white,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "6 Month",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,color: Colors.white,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "All Like Normal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,color: Colors.white,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Like & Youtube Videos",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,color: Colors.white,
                                      fontSize: 18),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 100.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Ad Taxic",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,color: Colors.white,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: InkWell(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    borderRadius: BorderRadius.circular(0)
                                ),
                                child: Center(
                                  child: Text(
                                    "Proceed",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PostProparty1()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Container(
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   decoration: const BoxDecoration(
      //       color: Colors.white,
      //       gradient: LinearGradient(
      //           begin: Alignment.topLeft,
      //           end: Alignment.bottomRight,
      //           colors: [Color(0xFF7F7F7F), Color(0xFF4863A0)])),
      //   child: ListView(
      //     children: [
      //       Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      //         Padding(
      //           padding: const EdgeInsets.only(top: 30.0),
      //           child: Row(
      //             children: [
      //               Container(
      //                 alignment: Alignment.center,
      //                 height: MediaQuery.of(context).size.height * 0.05,
      //                 width: MediaQuery.of(context).size.width * 0.40,
      //                 decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(30),
      //                     color: colors.whiteTemp),
      //                 child: Padding(
      //                   padding: EdgeInsets.all(8.0),
      //                   child: InkWell(
      //                     child: Text(
      //                       'Basic',
      //                       style: TextStyle(
      //                         color: firstColor,
      //                         fontSize: 15.0,
      //                       ),
      //                     ),
      //                     onTap: () {
      //                       setState(() {
      //                         firstColor = Colors.orangeAccent;
      //                         secondColor = Colors.black;
      //                         showToast();
      //                         showToastPrivate();
      //                         isClickGov = true;
      //                         isClickPrivate = false;
      //                       });
      //                     },
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(
      //                 width: 30,
      //               ),
      //               Container(
      //                 alignment: Alignment.center,
      //                 height: MediaQuery.of(context).size.height * 0.05,
      //                 width: MediaQuery.of(context).size.width * 0.40,
      //                 decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(30),
      //                     color: colors.whiteTemp),
      //                 child: Padding(
      //                   padding: EdgeInsets.all(8.0),
      //                   child: InkWell(
      //                     child: Text(
      //                       'Platinum ',
      //                       style: TextStyle(
      //                         color: secondColor,
      //                         fontSize: 15.0,
      //                       ),
      //                     ),
      //                     onTap: () {
      //                       setState(() {
      //                         secondColor = Colors.orangeAccent;
      //                         firstColor = Colors.black;
      //
      //                         showToastPrivate();
      //                         showToast();
      //                         isClickGov = false;
      //                         print("private");
      //                         isClickPrivate = true;
      //                       });
      //                     },
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ]),
      //       SizedBox(
      //         height: 70,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(0),
      //         child: Visibility(
      //           visible: isClickGov,
      //           child: Column(
      //             children: [
      //               Container(
      //                 height: MediaQuery.of(context).size.height * 0.4,
      //                 width: MediaQuery.of(context).size.width * 0.9,
      //                 decoration: BoxDecoration(
      //                     color: Colors.white70,
      //                     borderRadius: BorderRadius.circular(20)),
      //                 child: Padding(
      //                   padding: const EdgeInsets.only(top: 40.0),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "25000/-",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 14,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "6 Month",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 14,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "Photos",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 14,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "Specifications",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 14,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "Call No",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 14,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "Other Like",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 40,
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 80,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   InkWell(
      //                     child: Container(
      //                       width: MediaQuery.of(context).size.width * 0.9,
      //                       height: MediaQuery.of(context).size.height * 0.06,
      //                       child: Card(
      //                         color: Colors.white,
      //                         shape: RoundedRectangleBorder(
      //                           borderRadius: BorderRadius.circular(10),
      //                         ),
      //                         child: Center(
      //                             child: Row(
      //                           // crossAxisAlignment: CrossAxisAlignment.center,
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             Text(
      //                               'Submit',
      //                               style: TextStyle(
      //                                   color: Colors.indigo,
      //                                   fontSize: 20,
      //                                   fontWeight: FontWeight.bold),
      //                             ),
      //                           ],
      //                         )),
      //                       ),
      //                     ),
      //                     onTap: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => PostProperty()),
      //                       );
      //                     },
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(0),
      //         child: Visibility(
      //           visible: isClickPrivate,
      //           child: Column(
      //             children: [
      //               Container(
      //                 height: MediaQuery.of(context).size.height * 0.4,
      //                 width: MediaQuery.of(context).size.width * 0.9,
      //                 decoration: BoxDecoration(
      //                     color: Colors.white70,
      //                     borderRadius: BorderRadius.circular(20)),
      //                 child: Padding(
      //                   padding: const EdgeInsets.only(top: 30.0),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "50,000/-",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 14,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "6 Month",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 14,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "All Like Normal",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 14,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "Recommend",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 14,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "Like & Youtube Videos",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 14,
      //                       ),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "Ad Taxic",
      //                             style: TextStyle(fontSize: 20),
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         height: 40,
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 80,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   InkWell(
      //                     child: Container(
      //                       width: MediaQuery.of(context).size.width * 0.9,
      //                       height: MediaQuery.of(context).size.height * 0.06,
      //                       child: Card(
      //                         color: Colors.white,
      //                         shape: RoundedRectangleBorder(
      //                           borderRadius: BorderRadius.circular(10),
      //                         ),
      //                         child: Center(
      //                             child: Row(
      //                           // crossAxisAlignment: CrossAxisAlignment.center,
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             Text(
      //                               'Submit',
      //                               style: TextStyle(
      //                                   color: Colors.indigo,
      //                                   fontSize: 20,
      //                                   fontWeight: FontWeight.bold),
      //                             ),
      //                           ],
      //                         )),
      //                       ),
      //                     ),
      //                     onTap: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => Coloniser1()),
      //                       );
      //                     },
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
  // Widget getcoloniserlist(){
  //
  //   return SingleChildScrollView();
  // }
}
