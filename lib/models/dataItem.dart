import 'package:flutter/material.dart';

class dataItem extends StatelessWidget {
  final String data;
  final String timestamp;
  const dataItem({super.key, required this.data, required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                data,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                timestamp,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],

        )
    );
  }
}
