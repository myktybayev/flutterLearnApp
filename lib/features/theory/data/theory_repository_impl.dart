import 'dart:convert';

import 'package:flutter/services.dart';

import 'dto_models/theory_dto.dart';
import 'theory_repository.dart';

class TheoryRepositoryImpl implements TheoryRepository {
  final AssetBundle bundle;

  TheoryRepositoryImpl({required this.bundle});
  @override
  Future<List<TheoryDTO>> fetchTheories() async {
    final String response = await bundle.loadString('json/theories_topic.json');
    final Map<String, dynamic> map =
        json.decode(response) as Map<String, dynamic>;
    final List<dynamic> data = map["items"] as List<dynamic>;
    return data
        .map<TheoryDTO>(
            (json) => TheoryDTO.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
