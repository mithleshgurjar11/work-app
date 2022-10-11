import 'package:flutter/material.dart';
import 'package:share/share.dart';

class ShareApp extends StatefulWidget {
  const ShareApp({Key? key}) : super(key: key);

  @override
  _ShareAppState createState() => _ShareAppState();
}

class _ShareAppState extends State<ShareApp> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          shadowColor: const Color(0xFF1B61A8),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFF793812), Color(0xFFE26921)])),
          ),
          centerTitle: true,
          title: Text('Share App',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
      ),
      body: Container(
        height: _height,
        width: _width,
        decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFF17024), Color(0xFFFEAC00)])
        ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 120,
            width: 320,
            child: Card(
              elevation: 8,
              shadowColor: const Color(0xFF793812),
              color: Color(0xFFD5D4D4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 228.0),
                    child: IconButton(onPressed: () async {
                      final urlPreview='https://www.youtube.com/watch?v=_0i1bllb0-Y';
                      await Share.share('\n\n$urlPreview');
                    }, icon: Icon(Icons.share,color:Colors.black ,)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
