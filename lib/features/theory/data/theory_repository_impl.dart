import 'dart:convert';

import 'package:flutter/services.dart';

import 'dto_models/theory_dto.dart';
import 'theory_repository.dart';

class TheoryRepositoryImpl implements TheoryRepository {
  @override
  Future<List<TheoryDTO>> fetchTheories() async {
    final String response =
        await rootBundle.loadString('json/theories_topic.json');
    final List<dynamic> data = json.decode(response) as List<dynamic>;
    return data.map<TheoryDTO>((json) => TheoryDTO.fromJson(json)).toList();
  }
}
