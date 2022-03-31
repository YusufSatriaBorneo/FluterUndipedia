import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'detail.dart';

class Kesehatan extends StatefulWidget {
  @override
  _KesehatanState createState() => _KesehatanState();
}

class _KesehatanState extends State<Kesehatan> {
  Future<List> getData() async {
    final response =
        await http.get("http://10.0.2.2/flutter_undipedia/getkesehatan.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Jaga Kesehatan"),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? new KesehatanList(list: snapshot.data)
              : new Center(
                  child: new CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class KesehatanList extends StatelessWidget {
  final List list;
  KesehatanList({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Container(
          margin: EdgeInsets.only(right: 16, left: 5),
          child: new GestureDetector(
            onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(
                  builder: (BuildContext context) => new Detail(
                        list: list,
                        index: i,
                      )),
            ),
            child: new Card(
              child: new ListTile(
                title: new Text(list[i]['judul']),
                leading: new Icon(Icons.insert_photo),
                subtitle: new Text(list[i]['author']),
              ),
            ),
          ),
        );
      },
    );
  }
}
