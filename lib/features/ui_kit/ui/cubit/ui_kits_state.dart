import 'package:flutter_learn_app/features/ui_kit/data/ui_kits_topic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_kits_state.freezed.dart';

@freezed
class UiKitsState with _$UiKitsState {
  const factory UiKitsState.initial() = _Initial;
  const factory UiKitsState.loading() = _Loading;
  const factory UiKitsState.loaded(List<UIKitList> uiKits) = _Loaded;
  const factory UiKitsState.error(String message) = _Error;
}
