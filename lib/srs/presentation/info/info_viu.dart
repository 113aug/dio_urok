import 'package:dio_urok/srs/components/CostomProduktCard.dart';
import 'package:flutter/material.dart';

class InfoViu extends StatelessWidget {
  final String title;
  final String des;
  const InfoViu({Key? key, required this.title, required this.des})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.add,
            color: Colors.black,
            size: 40,
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text(
          'Marcet produkt info',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: SizedBox(
                    height: 300,
                    child: CostomProduktCard(
                      des: des,
                      title: title,
                    )))
          ],
        ),
      ),
    );
  }
}
