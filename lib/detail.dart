import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  List list;
  int index;
  Detail({this.list, this.index});
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
            title: new Text("${widget.list[widget.index]['judul']}")),
        body: new Container(
            padding: const EdgeInsets.all(20.0),
            child: new Center(
                child: new Column(children: <Widget>[
              Flexible(
                  child: new SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: new Text(
                  widget.list[widget.index]['isipost'],
                  textAlign: TextAlign.justify,
                  style: new TextStyle(fontSize: 16.0),
                ),
              )),
            ]))));
  }
}
