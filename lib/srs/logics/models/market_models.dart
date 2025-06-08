import 'dart:convert';

class MarketModels {
  final String name;
  final String description;

  MarketModels({required this.name, required this.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
    };
  }

  factory MarketModels.fromMap(Map<String, dynamic> map) {
    return MarketModels(
      name: map['name'] as String,
      description: map['description'] as String,
    );
  }
}
