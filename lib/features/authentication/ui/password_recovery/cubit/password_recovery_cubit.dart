import 'package:flutter_bloc/flutter_bloc.dart';

import 'password_recovery_state.dart';

class PasswordRecoveryCubit extends Cubit<PasswordRecoveryState> {
  PasswordRecoveryCubit() : super(const PasswordRecoveryState.initial());

  Future<void> changePassword(
      String newPassword, String confirmPassword) async {
    emit(const PasswordRecoveryState.loading());

    try {
      emit(const PasswordRecoveryState.success());
    } catch (e) {
      emit(PasswordRecoveryState.error(e.toString()));
    }
  }
}
