import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BlogCreation extends StatelessWidget {
  const BlogCreation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Creating Blog"),
        ),
        body: Column(
          children: [
            Card(
              child: Container(
                child: TextField(
                    decoration: new InputDecoration(
                        labelText: 'Please Enter Your Name',
                        hintText: 'Name',
                        icon: Icon(Icons.group)),
                    autocorrect: true),
              ),
            ),
            Card(
              child: Container(
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'About Yours Self',
                        hintText: 'Description',
                        icon: const Icon(Icons.group)),
                    autocorrect: true),
              ),
            ),
            Card(
              child: Container(
                child: TextField(
                    decoration: new InputDecoration(
                        labelText: 'DOB',
                        hintText: 'DOB',
                        icon: Icon(Icons.group)),
                    autocorrect: true),
              ),
            ),
            Card(
              child: Container(
                child: TextField(
                    decoration: new InputDecoration(
                        labelText: 'Yours Image Url',
                        hintText: 'Image',
                        icon: Icon(Icons.group)),
                    autocorrect: true),
              ),
            ),
          ],
        ));
  }
}
