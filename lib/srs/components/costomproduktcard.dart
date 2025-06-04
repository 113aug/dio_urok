import 'package:flutter/material.dart';

class CostomProduktCard extends StatelessWidget {
  const CostomProduktCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'title',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          )),
          Text(
            'Dex',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      color: Colors.grey,
    );
  }
}
