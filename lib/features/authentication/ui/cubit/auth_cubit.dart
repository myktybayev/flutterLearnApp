import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());

  Future<void> logIn(String email, String password) async {
    emit(const AuthState.loading());
    try {
      emit(const AuthState.loaded());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> register(String email, String password) async {
    emit(const AuthState.loading());
    try {
      emit(const AuthState.loaded());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}

// ================================================================================================================================

class PasswordRecoveryCubit extends Cubit<PasswordRecoveryState> {
  PasswordRecoveryCubit() : super(PasswordRecoveryState());

  void updateNewPassword(String newPassword) {
    emit(state.copyWith(newPassword: newPassword));
  }

  void updateConfirmPassword(String confirmPassword) {
    emit(state.copyWith(confirmPassword: confirmPassword));
  }

  void changePassword() {
    // Implement your logic for password change
    // For example, you can call an API here
  }
}
