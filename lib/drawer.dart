import 'package:flutter/material.dart';
import 'package:undipediaa/tips.dart';
import 'package:undipediaa/kampus.dart';
import 'package:undipediaa/kesehatan.dart';
import 'package:undipediaa/foto.dart';
import 'package:undipediaa/info.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: <Widget>[
      Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.postimg.cc/BQmR008R/logo.png"),
                      fit: BoxFit.fill),
                ),
              ),
              Text('Undipedia',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  )),
              Text('Semua tentang Undip',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  )),
            ],
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.fastfood),
        title: Text(
          'Tips Anak Rantau',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (BuildContext context) => Tips(),
              ));
        },
      ),
      ListTile(
        leading: Icon(Icons.school),
        title: Text(
          'Seputar Kampus',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (BuildContext context) => Kampus(),
              ));
        },
      ),
      ListTile(
        leading: Icon(Icons.healing),
        title: Text(
          'Jaga Kesehatan',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (BuildContext context) => Kesehatan(),
              ));
        },
      ),
      ListTile(
        leading: Icon(Icons.inbox),
        title: Text(
          'Info Penting',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (BuildContext context) => Info(),
              ));
        },
      ),
      ListTile(
        leading: Icon(Icons.camera_alt),
        title: Text(
          'Spot Foto',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (BuildContext context) => Foto(),
              ));
        },
      ),
    ]));
  }
}
