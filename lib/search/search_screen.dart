import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final textControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    textControler.addListener(() => onSearchChanged);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: getAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            showTags(),
            SizedBox(height: 8),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
            )
          ],
        ),
      ),
    );
  }

  Widget showTags() {
    List<String> tags = [
      "People",
      "Jobs",
      "Content",
      "Companies",
      "Schools",
      "Groups"
    ];
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: ListView.builder(
        itemCount: tags.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]),
            ),
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            child: Text(tags.elementAt(index)),
          );
        },
      ),
    );
  }

  onSearchChanged() {
    String searchText = textControler.text;
    print(searchText);
    // to do :D
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: TextField(
          controller: textControler,
          autofocus: true,
         onChanged: onSearchChanged(),
          style: new TextStyle(color: Colors.grey),
          decoration: InputDecoration.collapsed(
            hintText: "Search",
            hintStyle: new TextStyle(color: Colors.grey),
          ),
        ),
      ),
      actions: <Widget>[
        Container(
            padding: EdgeInsets.all(10),
            child: Icon(
              FontAwesomeIcons.qrcode,
              color: Colors.blue[200],
            ))
      ],
    );
  }
}
