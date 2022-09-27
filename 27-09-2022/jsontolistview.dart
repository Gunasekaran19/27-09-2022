import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List data = [];
  final Url = 'https://jsonplaceholder.typicode.com/users';
  void fetchdata() async {
    final response = await http.get(Uri.parse(Url));
    final jsonData = jsonDecode(response.body) as List;
    setState(() {
      data = jsonData;
    });
  }

  @override
  Widget build(BuildContext context) {
    fetchdata();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('AppBar')),
          actions: [Icon(Icons.search)],
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (dynamic context, dynamic index) {
              var post = data[index];
              return Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: Text('Name : ${post['name']}'),
                      subtitle: Text('lat:${post['address']['geo']['lat']}'),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
