// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'Screen/add_property.dart';
import 'Screen/home.dart';
import 'Screen/profile.dart';
import 'authentication/login_page.dart';
import 'drawer/about_us.dart';
import 'drawer/my_listing.dart';
import 'drawer/privacy_&_policy.dart';
import 'drawer/saved_searches.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
                Icons.person,
                size: 26,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profile()));
              },
            ),
          ],
        ),
        drawer: openDrawer(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.jpg"),
                        fit: BoxFit.fitHeight
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hi johan Searching in",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   width: 50,
                          // ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Text("+ Post Property",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 22, top: 10),
                      child: InkWell(
                        child: Row(
                          children: [
                            Text(
                              'Use My Current Location',
                              style: TextStyle(fontSize: 16,color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.my_location_sharp,
                              size: 16,color: Colors.white,
                            )
                          ],
                        ),
                        onTap: (){

                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Center(child: Text("Buy")),
                            ),
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Center(child: Text("Rent")),
                            ),
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddProperty()));
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Center(child: Text("Commercial")),
                            ),
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddProperty()));
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Center(child: Text("PG")),
                            ),
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Center(child: Text("Plot")),
                            ),
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddProperty()));
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.circular(10.0),
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
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    Text("Featured Collections",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    Text("Categories Suited To Your Property Needs",style: TextStyle(fontSize: 12,color: Colors.grey),)
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.greenAccent,
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/homeicon.png',
                                 height: 30,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Ready To Move-In',
                                  style: TextStyle(
                                      color:
                                      Colors.black.withOpacity(0.6),
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ChiragDehi()));
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.indigo,
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/homeicon.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Townships',
                                  style: TextStyle(
                                      color:
                                      Colors.black.withOpacity(0.6),
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ChiragDehi()));
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.amber,
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/homeicon.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Luxury',
                                  style: TextStyle(
                                      color:
                                      Colors.black.withOpacity(0.6),
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ChiragDehi()));
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.green,
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/homeicon.png',
                                  height: 30,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Affordable Homes',
                                  style: TextStyle(
                                      color:
                                      Colors.black.withOpacity(0.6),
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ChiragDehi()));
                      },
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.greenAccent,
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 28.0,top: 30),
                      child: Column(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Like the app?',
                            style: TextStyle(
                                color:
                                Colors.black.withOpacity(0.6),
                                fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Share the app',
                            style: TextStyle(
                                color:
                                Colors.black.withOpacity(0.6),
                                fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // InkWell(
                          //   child: Card(
                          //     child: Container(
                          //       height: 40,
                          //       width: 110,
                          //       decoration: BoxDecoration(
                          //         color: Colors.white,
                          //         borderRadius: BorderRadius.circular(10),
                          //       ),
                          //       child: Center(child: Text("Share Now")),
                          //     ),
                          //   ),
                          //   onTap: (){
                          //
                          //   },
                          // )
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 110,
                                child: Card(
                                  elevation: 8,
                                  shadowColor: const Color(0xFF793812),
                                  color: Color(0xFFD5D4D4),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 14,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0.0),
                                        child: InkWell(
                                          onTap: ()
                                          async {
                                            final urlPreview='https://www.youtube.com/watch?v=_0i1bllb0-Y';
                                            await Share.share('\n\n$urlPreview');
                                          },
                                            child: Center(child: Text("Share Now"))

                                        )
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
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
