import 'package:flutter/material.dart';

class CostomProduktCard extends StatelessWidget {
  final String title;
  final String des;
  const CostomProduktCard({
    super.key,
    required this.title,
    required this.des,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          )),
          Text(
            des,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      color: Colors.grey,
    );
  }
}
