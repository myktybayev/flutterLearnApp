import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    String? name,
    String? phoneNumber,
    @Default(false) bool isEdited,
  }) = _ProfileState;
}
