import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/theory/domain/models/theories_topic_model.dart';
import 'package:flutter_learn_app/features/theory/ui/cubit/theory_state.dart';

class TheoryCubit extends Cubit<TheoryState> {
  TheoryCubit() : super(const TheoryState()) {
    _loadTheories();
  }

  Future<void> _loadTheories() async {
    final String response =
        await rootBundle.loadString('json/theories_topic.json');
    final data = json.decode(response)["items"] as List;
    final theoryList =
        data.map<TheoryList>((json) => TheoryList.fromJson(json)).toList();
    emit(
        state.copyWith(theoryList: theoryList, filteredTheoryList: theoryList));
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
