import 'package:flutter_learn_app/features/ui_kit/data/ui_kits_topic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_kits_state.freezed.dart';

@freezed
class UiKitsState with _$UiKitsState {
  const factory UiKitsState.initial() = UIKitsInitial;
  const factory UiKitsState.loading() = UIKitsLoading;
  const factory UiKitsState.loaded({required List<UIKitList> uiKits}) =
      UIKitsLoaded;
  const factory UiKitsState.error(String message) = UIKitsError;
}
