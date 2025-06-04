import 'package:dio_urok/srs/components/CostomProduktCard.dart';
import 'package:dio_urok/srs/presentation/home/widgets/search_container_wigets.dart';
import 'package:dio_urok/srs/presentation/info/info_viu.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
          'Market',
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Search_container_wigets(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InfoViu()));
                    },
                    child: CostomProduktCard(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
