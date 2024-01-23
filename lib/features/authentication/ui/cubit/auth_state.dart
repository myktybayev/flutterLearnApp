import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loaded() = _Loaded;
  const factory AuthState.error(String message) = _Error;
}

// ================================================================================================================================

class PasswordRecoveryState {
  final String newPassword;
  final String confirmPassword;

  PasswordRecoveryState({
    this.newPassword = '',
    this.confirmPassword = '',
  });

  PasswordRecoveryState copyWith({
    String? newPassword,
    String? confirmPassword,
  }) {
    return PasswordRecoveryState(
      newPassword: newPassword ?? this.newPassword,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }
}
