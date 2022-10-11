// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:property_buy_seller/Screen/profile.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.jpg"),
                      fit: BoxFit.fitHeight
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8,top: 10),
                          child: Row(
                            children: [
                              Container(
                                // padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 6, top: 6, bottom: 8),
                                  child: InkWell(
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.grey,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Profile()));
                                    },
                                  ),
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.location_on_outlined,color: Colors.white,size: 30,),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.notifications_none_sharp,color: Colors.white,size: 30,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Center(
                        child: Text("Contact Us",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0,right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Inquiry Form",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                ),),
                            Text("Contact Information",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                               ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Text("Inquiry Form",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 18, right: 18, top: 2),
                child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding: EdgeInsets.all(18),
                      hintText: 'Full Name',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black38,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 18, right: 18, top: 2),
                child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding: EdgeInsets.all(18),
                      hintText: 'Email',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black38,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 18, right: 18, top: 2),
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding: EdgeInsets.all(18),
                      hintText: 'Mobile No',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black38,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 2),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 8,
                  maxLength: 1000,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding: EdgeInsets.all(18),
                      hintText: 'Message',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "SUBMIT",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Profile()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
