import 'package:dio_urok/srs/components/CostomProduktCard.dart';
import 'package:dio_urok/srs/logics/models/market_models.dart';
import 'package:dio_urok/srs/logics/services/api.dart';
import 'package:dio_urok/srs/presentation/home/widgets/search_container_wigets.dart';
import 'package:dio_urok/srs/presentation/info/info_viu.dart';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<MarketModels> items = [];
  final api = ApiService();
  bool isLoading = true;
  Future<void> getMarketInfo() async {
    try {
      final get = await api.getProduct();
      setState(() {
        items = get;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getMarketInfo();
  }

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
        child: RefreshIndicator(
          onRefresh: getMarketInfo,
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
                  itemCount: items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    final produkt = items[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoViu(
                                      des: produkt.description,
                                      title: produkt.name,
                                    )));
                      },
                      child: CostomProduktCard(
                        des: produkt.description,
                        title: produkt.name,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
