import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:db_test/models/dataItem.dart';
import 'package:flutter/material.dart';

class viewFiles extends StatefulWidget {
  const viewFiles({super.key});

  @override
  State<viewFiles> createState() => _viewFilesState();
}

class _viewFilesState extends State<viewFiles> {
  int count = 0;
  List<dataItem> items = [];
  bool initial = true;

  @override
  Widget build(BuildContext context) {
    if(items.isEmpty && initial == true){
    reloadItems();
    initial = false;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('View Files'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Files (Reload if empty)'),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      _removeItemPrompt(index);
                    },
                    child: items[index],
                  );
                },
              ),
            ),
            ElevatedButton(onPressed: reloadItems, child: Text('Reload'))
          ],
        ),
      ),
    );
  }


  Future<void> reloadItems() async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('test').get();

      List<dataItem> temp = [];
      for (QueryDocumentSnapshot document in querySnapshot.docs) {
        Map<String, dynamic> data = document.data() as Map<String, dynamic>;
        if (data['data'] != null) {
          temp.add(dataItem(data: data['data'], timestamp: data['timestamp']));
        }
      }
      setState(() {
        items = temp;
      });
    } catch (e) {
      print('Error retrieving data from Firestore: $e');
    }
  }

  void _removeItemPrompt(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete File'),
          content: Text('Are you sure you want to delete this file?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _removeItem(index);
                Navigator.of(context).pop();
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _removeItem(int index) {
    try {
      FirebaseFirestore.instance
        .collection('test')
        .doc(items[index].timestamp)
        .delete()
        .then((_) {
        setState(() {
          items.removeAt(index);
        });
      });
    } catch (e) {
      print('Error deleting document: $e');
    }
  }
}
