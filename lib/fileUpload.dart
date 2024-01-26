import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FileUpload extends StatefulWidget {
  FileUpload({super.key});

  @override
  State<FileUpload> createState() => _FileUploadState();
}

class _FileUploadState extends State<FileUpload> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Write for Upload'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Write for Upload',
                ),
              ),
            ),
            ElevatedButton(
                child: Text('Upload'),
                onPressed: () async {
                  upload(_controller.text, DateTime.now().toString());
                  _controller.clear();
                })
          ],
        ),
      ),
    );
  }
}


Future<void> upload(String data, String dt) async {
  try {
    await FirebaseFirestore.instance.collection('test').doc(dt).set({
      'data': data,
      'timestamp': dt, // Add a timestamp if needed
    });
    print('Data Uploaded to Firestore Successfully');
  } catch (e) {
    print('Error uploading data to Firestore: $e');
  }
}
