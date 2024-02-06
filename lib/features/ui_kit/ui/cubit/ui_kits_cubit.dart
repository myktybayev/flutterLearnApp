import 'package:bloc/bloc.dart';
import 'package:flutter_learn_app/features/ui_kit/data/ui_kits_topic.dart';
import 'package:flutter_learn_app/features/ui_kit/ui/cubit/ui_kits_state.dart';

class UiKitsCubit extends Cubit<UiKitsState> {
  UiKitsCubit() : super(const UiKitsState.initial());
  void loadUiKits() {
    emit(const UiKitsState.loading());
    try {
      emit(UiKitsState.loaded(uiKits: uiKitList));
    } catch (e) {
      emit(UiKitsState.error(e.toString()));
    }
  }

  void filterUiKits(String keyword) {
    if (keyword.isEmpty) {
      emit(UiKitsState.loaded(uiKits: uiKitList));
    } else {
      emit(UiKitsState.loaded(
          uiKits: uiKitList
              .where((uiKit) => uiKit.uiKitTopic
                  .toLowerCase()
                  .contains(keyword.toLowerCase()))
              .toList()));
    }
  }
}
