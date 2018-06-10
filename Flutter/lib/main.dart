import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(new MaterialApp(home: HelloWorldApp()));

class HelloWorldApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("My GitHub Repositories")
        ),
        body: new HomeWidget()
      );
    }
}

class HomeWidget extends StatefulWidget {
  @override
    State<StatefulWidget> createState() => new HomeState();
}

class HomeState extends State<HomeWidget> {
  Future<String> getData() async {
    http.Response response = await http.get(
      Uri.encodeFull("https://pinyin-rest.pepebecker.com/pinyin/我的猫喜欢喝牛奶"),
      headers: {
        "Accept": "application/json"
      }
    );

    Map data = JSON.decode(response.body);
    print(data["text"]);
  }
  @override
    Widget build(BuildContext context) {
      return new Column(
        children: <Widget>[
          new Container(
            color: Colors.red,
            padding: new EdgeInsets.all(16.0),
            child: new Center(
              child: new RaisedButton(
                child: new Text("Reload"),
                onPressed: getData,
              )
            )
          ),
          new Expanded(
            child: new ListView.builder(
              itemCount: 20,
              itemBuilder: (context, row) {
                return new Container(
                  padding: new EdgeInsets.all(16.0),
                  child: new Column(
                    children: <Widget>[
                      new Image.network("http://pepebecker.com/img/profile.png"),
                      new Text("Hi, I'm Pepe Becker, a software developer based in Cambridge",
                        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                        textAlign: TextAlign.center
                      ),
                      new Divider(color: Colors.blueGrey)
                    ],
                  )
                );
              }
            )
          )
        ]
      );
    }
}