import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    super.initState();
    // fetchPost();

    final post = {
      'title': 'hello',
      'description': 'nice to meet you'
    };

    print(post['title']);
    print(post['description']);

    final postJson = json.encode(post);
    print(postJson);

    final postJsonConverted = json.decode(postJson);
    print(postJsonConverted['title']);
    print(postJsonConverted['description']);
  }

  void fetchPost() async {
    final response = 
        await http.get('https://resources.ninghao.net/demo/posts.json');
    print('statusCode: ${response.statusCode}');
    print('body: ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}