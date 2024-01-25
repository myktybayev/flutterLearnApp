import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_recovery_state.freezed.dart';

@freezed
class PasswordRecoveryState with _$PasswordRecoveryState {
  const factory PasswordRecoveryState.initial() = _Initial;
  const factory PasswordRecoveryState.loading() = _Loading;
  const factory PasswordRecoveryState.success() = _Success;
  const factory PasswordRecoveryState.error(String message) = _Error;
}
