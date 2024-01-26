import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:db_test/fileUpload.dart';
import 'package:db_test/models/dataItem.dart';
import 'package:db_test/viewFiles.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_storage/firebase_storage.dart';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FileUpload()),
                );
              },
              child: Text('Create File'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => viewFiles()),
                );
              },
              child: Text('View Files'),
            )
          ],
        ),
      )),
    );
  }
}
