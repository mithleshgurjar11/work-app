import 'package:flutter/material.dart';

class BoyGirl extends StatefulWidget {
  const BoyGirl({Key? key}) : super(key: key);

  @override
  State<BoyGirl> createState() => _BoyGirlState();
}

class _BoyGirlState extends State<BoyGirl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Center(
            child: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          centerTitle: true,
          // flexibleSpace: Container(
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage('assets/appbar.png'),
          //           fit: BoxFit.fill)),
          // ),
          leading: InkWell(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 20,
              width: 30,
              child: Icon(Icons.arrow_back_sharp),
            ),
            onTap: () {
              Navigator.pop(context);
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      "Boy",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      "Girl",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
