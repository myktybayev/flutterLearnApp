// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoursesState {
  List<Course> get courses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoursesStateCopyWith<CoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesStateCopyWith<$Res> {
  factory $CoursesStateCopyWith(
          CoursesState value, $Res Function(CoursesState) then) =
      _$CoursesStateCopyWithImpl<$Res, CoursesState>;
  @useResult
  $Res call({List<Course> courses});
}

/// @nodoc
class _$CoursesStateCopyWithImpl<$Res, $Val extends CoursesState>
    implements $CoursesStateCopyWith<$Res> {
  _$CoursesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_value.copyWith(
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoursesStateCopyWith<$Res>
    implements $CoursesStateCopyWith<$Res> {
  factory _$$_CoursesStateCopyWith(
          _$_CoursesState value, $Res Function(_$_CoursesState) then) =
      __$$_CoursesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Course> courses});
}

/// @nodoc
class __$$_CoursesStateCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$_CoursesState>
    implements _$$_CoursesStateCopyWith<$Res> {
  __$$_CoursesStateCopyWithImpl(
      _$_CoursesState _value, $Res Function(_$_CoursesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$_CoursesState(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

class _$_CoursesState implements _CoursesState {
  const _$_CoursesState({required final List<Course> courses})
      : _courses = courses;

  final List<Course> _courses;
  @override
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'CoursesState(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoursesState &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoursesStateCopyWith<_$_CoursesState> get copyWith =>
      __$$_CoursesStateCopyWithImpl<_$_CoursesState>(this, _$identity);
}

abstract class _CoursesState implements CoursesState {
  const factory _CoursesState({required final List<Course> courses}) =
      _$_CoursesState;

  @override
  List<Course> get courses;
  @override
  @JsonKey(ignore: true)
  _$$_CoursesStateCopyWith<_$_CoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}
