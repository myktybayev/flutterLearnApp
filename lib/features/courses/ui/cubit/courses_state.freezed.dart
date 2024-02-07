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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Course> courses) loaded,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Course> courses)? loaded,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Course> courses)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoursesStateLoading value) loading,
    required TResult Function(CoursesStateIdle value) loaded,
    required TResult Function(CoursesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoursesStateLoading value)? loading,
    TResult? Function(CoursesStateIdle value)? loaded,
    TResult? Function(CoursesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoursesStateLoading value)? loading,
    TResult Function(CoursesStateIdle value)? loaded,
    TResult Function(CoursesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesStateCopyWith<$Res> {
  factory $CoursesStateCopyWith(
          CoursesState value, $Res Function(CoursesState) then) =
      _$CoursesStateCopyWithImpl<$Res, CoursesState>;
}

/// @nodoc
class _$CoursesStateCopyWithImpl<$Res, $Val extends CoursesState>
    implements $CoursesStateCopyWith<$Res> {
  _$CoursesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CoursesStateLoadingCopyWith<$Res> {
  factory _$$CoursesStateLoadingCopyWith(_$CoursesStateLoading value,
          $Res Function(_$CoursesStateLoading) then) =
      __$$CoursesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoursesStateLoadingCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$CoursesStateLoading>
    implements _$$CoursesStateLoadingCopyWith<$Res> {
  __$$CoursesStateLoadingCopyWithImpl(
      _$CoursesStateLoading _value, $Res Function(_$CoursesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CoursesStateLoading implements CoursesStateLoading {
  const _$CoursesStateLoading();

  @override
  String toString() {
    return 'CoursesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CoursesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Course> courses) loaded,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Course> courses)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Course> courses)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoursesStateLoading value) loading,
    required TResult Function(CoursesStateIdle value) loaded,
    required TResult Function(CoursesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoursesStateLoading value)? loading,
    TResult? Function(CoursesStateIdle value)? loaded,
    TResult? Function(CoursesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoursesStateLoading value)? loading,
    TResult Function(CoursesStateIdle value)? loaded,
    TResult Function(CoursesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CoursesStateLoading implements CoursesState {
  const factory CoursesStateLoading() = _$CoursesStateLoading;
}

/// @nodoc
abstract class _$$CoursesStateIdleCopyWith<$Res> {
  factory _$$CoursesStateIdleCopyWith(
          _$CoursesStateIdle value, $Res Function(_$CoursesStateIdle) then) =
      __$$CoursesStateIdleCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Course> courses});
}

/// @nodoc
class __$$CoursesStateIdleCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$CoursesStateIdle>
    implements _$$CoursesStateIdleCopyWith<$Res> {
  __$$CoursesStateIdleCopyWithImpl(
      _$CoursesStateIdle _value, $Res Function(_$CoursesStateIdle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$CoursesStateIdle(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

class _$CoursesStateIdle implements CoursesStateIdle {
  const _$CoursesStateIdle({required final List<Course> courses})
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
    return 'CoursesState.loaded(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesStateIdle &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesStateIdleCopyWith<_$CoursesStateIdle> get copyWith =>
      __$$CoursesStateIdleCopyWithImpl<_$CoursesStateIdle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Course> courses) loaded,
    required TResult Function(String? message) error,
  }) {
    return loaded(courses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Course> courses)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return loaded?.call(courses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Course> courses)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(courses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoursesStateLoading value) loading,
    required TResult Function(CoursesStateIdle value) loaded,
    required TResult Function(CoursesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoursesStateLoading value)? loading,
    TResult? Function(CoursesStateIdle value)? loaded,
    TResult? Function(CoursesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoursesStateLoading value)? loading,
    TResult Function(CoursesStateIdle value)? loaded,
    TResult Function(CoursesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CoursesStateIdle implements CoursesState {
  const factory CoursesStateIdle({required final List<Course> courses}) =
      _$CoursesStateIdle;

  List<Course> get courses;
  @JsonKey(ignore: true)
  _$$CoursesStateIdleCopyWith<_$CoursesStateIdle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoursesStateErrorCopyWith<$Res> {
  factory _$$CoursesStateErrorCopyWith(
          _$CoursesStateError value, $Res Function(_$CoursesStateError) then) =
      __$$CoursesStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CoursesStateErrorCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$CoursesStateError>
    implements _$$CoursesStateErrorCopyWith<$Res> {
  __$$CoursesStateErrorCopyWithImpl(
      _$CoursesStateError _value, $Res Function(_$CoursesStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CoursesStateError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CoursesStateError implements CoursesStateError {
  const _$CoursesStateError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'CoursesState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesStateErrorCopyWith<_$CoursesStateError> get copyWith =>
      __$$CoursesStateErrorCopyWithImpl<_$CoursesStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Course> courses) loaded,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Course> courses)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Course> courses)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoursesStateLoading value) loading,
    required TResult Function(CoursesStateIdle value) loaded,
    required TResult Function(CoursesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoursesStateLoading value)? loading,
    TResult? Function(CoursesStateIdle value)? loaded,
    TResult? Function(CoursesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoursesStateLoading value)? loading,
    TResult Function(CoursesStateIdle value)? loaded,
    TResult Function(CoursesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CoursesStateError implements CoursesState {
  const factory CoursesStateError({final String? message}) =
      _$CoursesStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$CoursesStateErrorCopyWith<_$CoursesStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
