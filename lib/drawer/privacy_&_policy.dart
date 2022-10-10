import 'package:flutter/material.dart';

import '../Screen/bottom_navigation_bar.dart';
import '../Screen/color.dart';

class PrivacyAndPolicy extends StatefulWidget {
  const PrivacyAndPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyAndPolicy> createState() => _PrivacyAndPolicyState();
}

class _PrivacyAndPolicyState extends State<PrivacyAndPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            'Privacy & Policy',
            style: TextStyle(color: Colors.white, fontSize: 20),
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
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Our Privacy Policy",style: TextStyle(color: colors.primary,fontWeight: FontWeight.bold),),
          ),
          Container(
            color: colors.whiteTemp,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Lorem ipsum dolor sit amet, consetetur"
                  " sadipscing elitr, sed diam nonumy eirmod "
                  "tempor invidunt ut labore et dolore magna"
                  " aliquyam erat, sed diam voluptua. "
                  "At vero eos et accusam et justo duo "
                  "dolores et ea rebum. Stet clita kasd "
                  "gubergren, no sea takimata sanctus est "
                  "Lorem ipsum dolor sit amet. Lorem ipsum "
                  "dolor sit amet, consetetur sadipscing elitr,"
                  " sed diam nonumy eirmod tempor invidunt ut"
                  " labore et dolore magna aliquyam erat, sed "
                  "diam voluptua. At vero eos et accusam et "
                  "justo duo dolores et ea rebum. Stet clita "
                  "kasd gubergren, no sea takimata sanctus est"
                  " Lorem ipsum dolor sit amet. Lorem ipsum dolor"
                  " sit amet, consetetur sadipscing elitr, sed diam"
                  " nonumy eirmod tempor invidunt ut labore et"
                  " dolore magna aliquyam erat, sed diam"
                  " voluptua. At vero eos et accusam et"
                  " justo duo dolores et ea rebum. Stet "
                  "clita kasd gubergren, no sea takimata "
                  "sanctus est Lorem ipsum dolor sit amet. "
                  "Lorem ipsum dolor sit amet, consetetur"
                  " sadipscing elitr, sed diam nonumy eirmod"
                  " tempor invidunt ut labore et dolore magna "
                  "aliquyam erat, sed diam voluptua. At vero eos et "
                  "accusam et justo duo dolores et ea rebum. Stet "
                  "clita kasd gubergren, no sea takimata sanctus est"
                  " Lorem ipsum dolor sit amet. Lorem ipsum dolor sit "
                  "amet, consetetur sadipscing elitr, sed diam nonumy "
                  "eirmod tempor invidunt ut labore et dolore magna "
                  "aliquyam erat, sed diam voluptua. At vero eos et "
                  "accusam et justo duo dolores et ea rebum. Stet"
                  " clita kasd gubergren, no sea takimata sanctus"
                  " est Lorem ipsum dolor sit amet. Lorem ipsum dolor "
                  "sit amet, consetetur sadipscing elitr, sed diam "
                  "justo duo dolores et ea rebum"
                  "amet, consetetur sadipscing elitr, sed diam nonumy "
                  "eirmod tempor invidunt ut labore et dolore magna "
                  "aliquyam erat, sed diam voluptua. At vero eos et "
                  "accusam et justo duo dolores et ea rebum. Stet"
                  " clita kasd gubergren, no sea takimata sanctus"
                  " est Lorem ipsum dolor sit amet. Lorem ipsum dolor "
                  "sit amet, consetetur sadipscing elitr, sed diam "),
            ),
          )

        ],
      ),
    );
  }
}
