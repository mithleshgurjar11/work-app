import 'package:flutter/material.dart';

class ChiragDehi extends StatefulWidget {
  const ChiragDehi({Key? key}) : super(key: key);

  @override
  State<ChiragDehi> createState() => _ChiragDehiState();
}

class _ChiragDehiState extends State<ChiragDehi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Center(
            child: Text(
              'Chirag Dehi',
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
          child: Column(children: [
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(0)),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/favorites.jpeg',
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'assets/images/room1.jpg',
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'assets/images/house.jpg',
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'assets/images/favorites.jpeg',
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            '5 BHK Builder floor',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            '30 Lac | 1110 sqft',
                            style:
                                TextStyle(color: Colors.indigo, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Chirag Delhi New Delhi',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ready To move',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Icon(Icons.favorite_border),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                )),
          ])),
    );
  }
}
