import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/profile/ui/cubit/profile_settings/profile_settings_state.dart';

class ProfileSettingsCubit extends Cubit<ProfileSettingsState> {
  ProfileSettingsCubit() : super(const ProfileSettingsState());
}
