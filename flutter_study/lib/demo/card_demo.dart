import 'package:flutter/material.dart';
import 'package:flutter_study/model/post.dart';

class CardDemo extends StatefulWidget {
  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CardDemo'), elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: posts.map((post) {
            return Card(
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                      child: Image.network(
                        post.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(post.imageUrl),
                    ),
                    title: Text(post.title),
                    subtitle: Text(post.author),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(post.description,
                        maxLines: 2, overflow: TextOverflow.ellipsis),
                  ),
                  ButtonTheme(
                      child: ButtonBar(
                    children: <Widget>[
                      TextButton(
                          onPressed: () {}, child: Text('Like'.toUpperCase())),
                      TextButton(
                          onPressed: () {}, child: Text('Read'.toUpperCase())),
                    ],
                  ))
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
