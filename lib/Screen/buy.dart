import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';


class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF7F7F7F), Color(0xFF4863A0)])),
      ),
    );
  }
}
