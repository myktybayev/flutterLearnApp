import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/theory/domain/models/theories_topic_model.dart';
import 'package:flutter_learn_app/features/theory/ui/cubit/theory_state.dart';

class TheoryCubit extends Cubit<TheoryState> {
  final AssetBundle assetBundle;

  TheoryCubit({required this.assetBundle}) : super(const TheoryState()) {
    loadTheories();
  }

  Future<void> loadTheories() async {
    try {
      final String response =
          await assetBundle.loadString('json/theories_topic.json');
      final data = json.decode(response)["items"] as List;
      final theoryList =
          data.map<TheoryList>((json) => TheoryList.fromJson(json)).toList();
      emit(state.copyWith(
          theoryList: theoryList, filteredTheoryList: theoryList));
    } catch (e) {}
  }

  void runFilter(String enteredKeyword) {
    List<TheoryList> results = [];
    if (enteredKeyword.isEmpty) {
      results = state.theoryList;
    } else {
      results = state.theoryList
          .where((theory) => theory.theoryName!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    emit(state.copyWith(filteredTheoryList: results));
  }
}
