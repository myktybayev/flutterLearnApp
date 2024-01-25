import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/profile/ui/cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState());

  void saveData(String name, String phoneNumber) {
    emit(state.copyWith(name: name, phoneNumber: phoneNumber, isEdited: true));
  }

  void restartEdit() {
    emit(state.copyWith(isEdited: false));
  }
}
