// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizState {
  int get currentQuestionIndex => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  Answer? get selectedAnswer => throw _privateConstructorUsedError;
  List<Question> get questionList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call(
      {int currentQuestionIndex,
      int score,
      Answer? selectedAnswer,
      List<Question> questionList});
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentQuestionIndex = null,
    Object? score = null,
    Object? selectedAnswer = freezed,
    Object? questionList = null,
  }) {
    return _then(_value.copyWith(
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as Answer?,
      questionList: null == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizStateLoadedCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$QuizStateLoadedCopyWith(
          _$QuizStateLoaded value, $Res Function(_$QuizStateLoaded) then) =
      __$$QuizStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentQuestionIndex,
      int score,
      Answer? selectedAnswer,
      List<Question> questionList});
}

/// @nodoc
class __$$QuizStateLoadedCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateLoaded>
    implements _$$QuizStateLoadedCopyWith<$Res> {
  __$$QuizStateLoadedCopyWithImpl(
      _$QuizStateLoaded _value, $Res Function(_$QuizStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentQuestionIndex = null,
    Object? score = null,
    Object? selectedAnswer = freezed,
    Object? questionList = null,
  }) {
    return _then(_$QuizStateLoaded(
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as Answer?,
      questionList: null == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$QuizStateLoaded implements QuizStateLoaded {
  const _$QuizStateLoaded(
      {this.currentQuestionIndex = 0,
      this.score = 0,
      this.selectedAnswer,
      required final List<Question> questionList})
      : _questionList = questionList;

  @override
  @JsonKey()
  final int currentQuestionIndex;
  @override
  @JsonKey()
  final int score;
  @override
  final Answer? selectedAnswer;
  final List<Question> _questionList;
  @override
  List<Question> get questionList {
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionList);
  }

  @override
  String toString() {
    return 'QuizState(currentQuestionIndex: $currentQuestionIndex, score: $score, selectedAnswer: $selectedAnswer, questionList: $questionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateLoaded &&
            (identical(other.currentQuestionIndex, currentQuestionIndex) ||
                other.currentQuestionIndex == currentQuestionIndex) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                other.selectedAnswer == selectedAnswer) &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentQuestionIndex, score,
      selectedAnswer, const DeepCollectionEquality().hash(_questionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateLoadedCopyWith<_$QuizStateLoaded> get copyWith =>
      __$$QuizStateLoadedCopyWithImpl<_$QuizStateLoaded>(this, _$identity);
}

abstract class QuizStateLoaded implements QuizState {
  const factory QuizStateLoaded(
      {final int currentQuestionIndex,
      final int score,
      final Answer? selectedAnswer,
      required final List<Question> questionList}) = _$QuizStateLoaded;

  @override
  int get currentQuestionIndex;
  @override
  int get score;
  @override
  Answer? get selectedAnswer;
  @override
  List<Question> get questionList;
  @override
  @JsonKey(ignore: true)
  _$$QuizStateLoadedCopyWith<_$QuizStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
