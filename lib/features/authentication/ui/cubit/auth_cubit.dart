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
