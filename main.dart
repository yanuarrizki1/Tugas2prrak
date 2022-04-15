import 'dart:html';

import 'package:flutter/material.dart';
import 'package:asep/profilpage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.pink,
    ),
    debugShowCheckedModeBanner: false,
    home: SearchPage(),
  ));
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(12.0),
                alignment: Alignment.centerRight,
                height: 50,
                child: IconButton(
                  icon: Icon(Icons.navigate_next_rounded),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilPage()));
                  },
                ),
              ),
              Padding(padding: EdgeInsets.all(12.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
             Container(
                width: 380,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://media.suara.com/pictures/653x366/2021/10/25/21971-kredivo.jpg'),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
              Container(
                width: 380,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://akcdn.detik.net.id/visual/2019/09/11/3f5916f7-d136-4b2d-aab3-2e3e007f34e1_169.jpeg?w=715&q=90'),
                    )),
                    
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
