import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_learn_app/features/profile/ui/cubit/profile/profile_cubit.dart';
import 'package:flutter_learn_app/features/profile/ui/cubit/profile/profile_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late ProfileCubit profileCubit;
  setUp(() {
    profileCubit = ProfileCubit();
  });

  blocTest<ProfileCubit, ProfileState>(
    'emits updated state with new name and phone number',
    build: () => profileCubit,
    act: (profileCubit) => profileCubit.saveData('John Doe', '87711593543'),
    expect: () => [
      const ProfileState(
          name: 'John Doe', phoneNumber: '87711593543', isEdited: true),
    ],
  );

  blocTest<ProfileCubit, ProfileState>(
    'emits state with isEdited: false when restartEdit is called',
    build: () => profileCubit,
    act: (profileCubit) => profileCubit.restartEdit(),
    expect: () => [
      const ProfileState(isEdited: false),
    ],
  );

  tearDown(() => profileCubit.close());
}
