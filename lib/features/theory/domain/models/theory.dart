import 'package:freezed_annotation/freezed_annotation.dart';

part 'theory.freezed.dart';

@freezed
class Theory with _$Theory {
  const factory Theory({
    required String title,
    required int progress,
    required String imageUrl,
    @Default(false) bool isSaved,
  }) = _Theory;
}
