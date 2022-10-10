import 'package:flutter/material.dart';

import '../Screen/bottom_navigation_bar.dart';

class SavedSearches extends StatefulWidget {
  const SavedSearches({Key? key}) : super(key: key);

  @override
  State<SavedSearches> createState() => _SavedSearchesState();
}

class _SavedSearchesState extends State<SavedSearches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            'Saved Searches',
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
    );
  }
}
