import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import 'color.dart';

class MyFavourites extends StatefulWidget {
  const MyFavourites({Key? key}) : super(key: key);

  @override
  State<MyFavourites> createState() => _MyFavouritesState();
}

class _MyFavouritesState extends State<MyFavourites> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Center(
              child: Text(
                'My Favourites',
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
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            height: 100,
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: colors.whiteTemp,
                              // borderRadius: BorderRadius.circular(15)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/favorite.webp",
                                        height: 100,
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "रू 3 Crore",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            "Pratab Nagar \n New Delhi",
                                            style: TextStyle(
                                                color: colors.black54,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  InkWell(child: Icon(Icons.favorite_border))
                                ],
                              ),
                            ));
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
