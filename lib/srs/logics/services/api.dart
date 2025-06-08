import 'package:dio/dio.dart';
import 'package:dio_urok/srs/logics/models/market_models.dart';

class ApiService {
  final dio = Dio();
  Future<List<MarketModels>> getProduct() async {
    try {
      final getInfo = dio.get('https://back-gamma-jade.vercel.app/api/items/');
      final response = await getInfo;
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((item) => MarketModels.fromMap(item))
            .toList();
      } else {
        throw Exception('Ошибка загруски: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('$e');
      print(e);
    }
  }
}
