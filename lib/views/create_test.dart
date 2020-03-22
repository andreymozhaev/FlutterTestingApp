import 'package:flutter/material.dart';

class CreateTest extends StatefulWidget {
  @override
  _CreateTestState createState() => _CreateTestState();
}

class _CreateTestState extends State<CreateTest> {
  String authorName, title, desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Flutter", style: TextStyle(fontSize: 22)),
            Text(
              "Test",
              style: TextStyle(fontSize: 22, color: Colors.blue),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.file_upload))
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              width: MediaQuery.of(context).size.width,
              child: Icon(
                Icons.add_a_photo,
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(hintText: "Author Name"),
                      onChanged: (val){
                        authorName=val;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Title"),
                      onChanged: (val){
                        title=val;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Desc"),
                      onChanged: (val){
                        desc=val;
                      },
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
