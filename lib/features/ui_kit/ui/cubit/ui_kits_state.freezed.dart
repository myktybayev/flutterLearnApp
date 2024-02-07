// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_kits_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UiKitsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UIKitList> uiKits) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UIKitList> uiKits)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UIKitList> uiKits)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIKitsInitial value) initial,
    required TResult Function(UIKitsLoading value) loading,
    required TResult Function(UIKitsLoaded value) loaded,
    required TResult Function(UIKitsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIKitsInitial value)? initial,
    TResult? Function(UIKitsLoading value)? loading,
    TResult? Function(UIKitsLoaded value)? loaded,
    TResult? Function(UIKitsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIKitsInitial value)? initial,
    TResult Function(UIKitsLoading value)? loading,
    TResult Function(UIKitsLoaded value)? loaded,
    TResult Function(UIKitsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiKitsStateCopyWith<$Res> {
  factory $UiKitsStateCopyWith(
          UiKitsState value, $Res Function(UiKitsState) then) =
      _$UiKitsStateCopyWithImpl<$Res, UiKitsState>;
}

/// @nodoc
class _$UiKitsStateCopyWithImpl<$Res, $Val extends UiKitsState>
    implements $UiKitsStateCopyWith<$Res> {
  _$UiKitsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UIKitsInitialCopyWith<$Res> {
  factory _$$UIKitsInitialCopyWith(
          _$UIKitsInitial value, $Res Function(_$UIKitsInitial) then) =
      __$$UIKitsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UIKitsInitialCopyWithImpl<$Res>
    extends _$UiKitsStateCopyWithImpl<$Res, _$UIKitsInitial>
    implements _$$UIKitsInitialCopyWith<$Res> {
  __$$UIKitsInitialCopyWithImpl(
      _$UIKitsInitial _value, $Res Function(_$UIKitsInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UIKitsInitial implements UIKitsInitial {
  const _$UIKitsInitial();

  @override
  String toString() {
    return 'UiKitsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UIKitsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UIKitList> uiKits) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UIKitList> uiKits)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UIKitList> uiKits)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIKitsInitial value) initial,
    required TResult Function(UIKitsLoading value) loading,
    required TResult Function(UIKitsLoaded value) loaded,
    required TResult Function(UIKitsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIKitsInitial value)? initial,
    TResult? Function(UIKitsLoading value)? loading,
    TResult? Function(UIKitsLoaded value)? loaded,
    TResult? Function(UIKitsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIKitsInitial value)? initial,
    TResult Function(UIKitsLoading value)? loading,
    TResult Function(UIKitsLoaded value)? loaded,
    TResult Function(UIKitsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UIKitsInitial implements UiKitsState {
  const factory UIKitsInitial() = _$UIKitsInitial;
}

/// @nodoc
abstract class _$$UIKitsLoadingCopyWith<$Res> {
  factory _$$UIKitsLoadingCopyWith(
          _$UIKitsLoading value, $Res Function(_$UIKitsLoading) then) =
      __$$UIKitsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UIKitsLoadingCopyWithImpl<$Res>
    extends _$UiKitsStateCopyWithImpl<$Res, _$UIKitsLoading>
    implements _$$UIKitsLoadingCopyWith<$Res> {
  __$$UIKitsLoadingCopyWithImpl(
      _$UIKitsLoading _value, $Res Function(_$UIKitsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UIKitsLoading implements UIKitsLoading {
  const _$UIKitsLoading();

  @override
  String toString() {
    return 'UiKitsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UIKitsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UIKitList> uiKits) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UIKitList> uiKits)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UIKitList> uiKits)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(UIKitsInitial value) initial,
    required TResult Function(UIKitsLoading value) loading,
    required TResult Function(UIKitsLoaded value) loaded,
    required TResult Function(UIKitsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIKitsInitial value)? initial,
    TResult? Function(UIKitsLoading value)? loading,
    TResult? Function(UIKitsLoaded value)? loaded,
    TResult? Function(UIKitsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIKitsInitial value)? initial,
    TResult Function(UIKitsLoading value)? loading,
    TResult Function(UIKitsLoaded value)? loaded,
    TResult Function(UIKitsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UIKitsLoading implements UiKitsState {
  const factory UIKitsLoading() = _$UIKitsLoading;
}

/// @nodoc
abstract class _$$UIKitsLoadedCopyWith<$Res> {
  factory _$$UIKitsLoadedCopyWith(
          _$UIKitsLoaded value, $Res Function(_$UIKitsLoaded) then) =
      __$$UIKitsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UIKitList> uiKits});
}

/// @nodoc
class __$$UIKitsLoadedCopyWithImpl<$Res>
    extends _$UiKitsStateCopyWithImpl<$Res, _$UIKitsLoaded>
    implements _$$UIKitsLoadedCopyWith<$Res> {
  __$$UIKitsLoadedCopyWithImpl(
      _$UIKitsLoaded _value, $Res Function(_$UIKitsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uiKits = null,
  }) {
    return _then(_$UIKitsLoaded(
      uiKits: null == uiKits
          ? _value._uiKits
          : uiKits // ignore: cast_nullable_to_non_nullable
              as List<UIKitList>,
    ));
  }
}

/// @nodoc

class _$UIKitsLoaded implements UIKitsLoaded {
  const _$UIKitsLoaded({required final List<UIKitList> uiKits})
      : _uiKits = uiKits;

  final List<UIKitList> _uiKits;
  @override
  List<UIKitList> get uiKits {
    if (_uiKits is EqualUnmodifiableListView) return _uiKits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uiKits);
  }

  @override
  String toString() {
    return 'UiKitsState.loaded(uiKits: $uiKits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIKitsLoaded &&
            const DeepCollectionEquality().equals(other._uiKits, _uiKits));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_uiKits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UIKitsLoadedCopyWith<_$UIKitsLoaded> get copyWith =>
      __$$UIKitsLoadedCopyWithImpl<_$UIKitsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UIKitList> uiKits) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(uiKits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UIKitList> uiKits)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(uiKits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UIKitList> uiKits)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(uiKits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIKitsInitial value) initial,
    required TResult Function(UIKitsLoading value) loading,
    required TResult Function(UIKitsLoaded value) loaded,
    required TResult Function(UIKitsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIKitsInitial value)? initial,
    TResult? Function(UIKitsLoading value)? loading,
    TResult? Function(UIKitsLoaded value)? loaded,
    TResult? Function(UIKitsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIKitsInitial value)? initial,
    TResult Function(UIKitsLoading value)? loading,
    TResult Function(UIKitsLoaded value)? loaded,
    TResult Function(UIKitsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UIKitsLoaded implements UiKitsState {
  const factory UIKitsLoaded({required final List<UIKitList> uiKits}) =
      _$UIKitsLoaded;

  List<UIKitList> get uiKits;
  @JsonKey(ignore: true)
  _$$UIKitsLoadedCopyWith<_$UIKitsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UIKitsErrorCopyWith<$Res> {
  factory _$$UIKitsErrorCopyWith(
          _$UIKitsError value, $Res Function(_$UIKitsError) then) =
      __$$UIKitsErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UIKitsErrorCopyWithImpl<$Res>
    extends _$UiKitsStateCopyWithImpl<$Res, _$UIKitsError>
    implements _$$UIKitsErrorCopyWith<$Res> {
  __$$UIKitsErrorCopyWithImpl(
      _$UIKitsError _value, $Res Function(_$UIKitsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UIKitsError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UIKitsError implements UIKitsError {
  const _$UIKitsError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UiKitsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIKitsError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UIKitsErrorCopyWith<_$UIKitsError> get copyWith =>
      __$$UIKitsErrorCopyWithImpl<_$UIKitsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UIKitList> uiKits) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UIKitList> uiKits)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UIKitList> uiKits)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(UIKitsInitial value) initial,
    required TResult Function(UIKitsLoading value) loading,
    required TResult Function(UIKitsLoaded value) loaded,
    required TResult Function(UIKitsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIKitsInitial value)? initial,
    TResult? Function(UIKitsLoading value)? loading,
    TResult? Function(UIKitsLoaded value)? loaded,
    TResult? Function(UIKitsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIKitsInitial value)? initial,
    TResult Function(UIKitsLoading value)? loading,
    TResult Function(UIKitsLoaded value)? loaded,
    TResult Function(UIKitsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UIKitsError implements UiKitsState {
  const factory UIKitsError(final String message) = _$UIKitsError;

  String get message;
  @JsonKey(ignore: true)
  _$$UIKitsErrorCopyWith<_$UIKitsError> get copyWith =>
      throw _privateConstructorUsedError;
}
