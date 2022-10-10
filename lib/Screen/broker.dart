import 'package:flutter/material.dart';
import 'package:property_buy_seller/Screen/postproparty1.dart';
// String _counter ="";
class Broker extends StatefulWidget {
  const Broker({Key? key}) : super(key: key);

  @override
  State<Broker> createState() => _BrokerState();
}

class _BrokerState extends State<Broker> {

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


            child: Text(
              "Subscription",
              // '${_counter.toString()}',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          centerTitle: true,
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
                          padding: const EdgeInsets.only(left: 28.0),
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
                                padding: const EdgeInsets.only(right: 50.0),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "6000 INR/-",
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
                                padding: const EdgeInsets.only(right: 70.0),
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
                                padding: const EdgeInsets.only(right: 40.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Property 50.",
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
                                    "Featured Visibility",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,color: Colors.white,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
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
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Platinum",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,color: Colors.white,
                                  fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
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
                        width: 14,
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
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "12000 INR/-",
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
                              padding: const EdgeInsets.only(right: 30.0),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Property 50.",
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
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Prime Tag",
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
                        padding: const EdgeInsets.only(left: 85.0),
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

    );
  }
//  Widget getborkerlist(){
//
//     return SingleChildScrollView();
// }
}
