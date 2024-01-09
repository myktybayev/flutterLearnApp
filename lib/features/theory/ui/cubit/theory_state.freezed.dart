// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theory_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TheoryState {
  List<TheoryList> get theoryList => throw _privateConstructorUsedError;
  List<TheoryList> get filteredTheoryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TheoryStateCopyWith<TheoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TheoryStateCopyWith<$Res> {
  factory $TheoryStateCopyWith(
          TheoryState value, $Res Function(TheoryState) then) =
      _$TheoryStateCopyWithImpl<$Res, TheoryState>;
  @useResult
  $Res call({List<TheoryList> theoryList, List<TheoryList> filteredTheoryList});
}

/// @nodoc
class _$TheoryStateCopyWithImpl<$Res, $Val extends TheoryState>
    implements $TheoryStateCopyWith<$Res> {
  _$TheoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theoryList = null,
    Object? filteredTheoryList = null,
  }) {
    return _then(_value.copyWith(
      theoryList: null == theoryList
          ? _value.theoryList
          : theoryList // ignore: cast_nullable_to_non_nullable
              as List<TheoryList>,
      filteredTheoryList: null == filteredTheoryList
          ? _value.filteredTheoryList
          : filteredTheoryList // ignore: cast_nullable_to_non_nullable
              as List<TheoryList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TheoryStateCopyWith<$Res>
    implements $TheoryStateCopyWith<$Res> {
  factory _$$_TheoryStateCopyWith(
          _$_TheoryState value, $Res Function(_$_TheoryState) then) =
      __$$_TheoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TheoryList> theoryList, List<TheoryList> filteredTheoryList});
}

/// @nodoc
class __$$_TheoryStateCopyWithImpl<$Res>
    extends _$TheoryStateCopyWithImpl<$Res, _$_TheoryState>
    implements _$$_TheoryStateCopyWith<$Res> {
  __$$_TheoryStateCopyWithImpl(
      _$_TheoryState _value, $Res Function(_$_TheoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theoryList = null,
    Object? filteredTheoryList = null,
  }) {
    return _then(_$_TheoryState(
      theoryList: null == theoryList
          ? _value._theoryList
          : theoryList // ignore: cast_nullable_to_non_nullable
              as List<TheoryList>,
      filteredTheoryList: null == filteredTheoryList
          ? _value._filteredTheoryList
          : filteredTheoryList // ignore: cast_nullable_to_non_nullable
              as List<TheoryList>,
    ));
  }
}

/// @nodoc

class _$_TheoryState implements _TheoryState {
  const _$_TheoryState(
      {final List<TheoryList> theoryList = const [],
      final List<TheoryList> filteredTheoryList = const []})
      : _theoryList = theoryList,
        _filteredTheoryList = filteredTheoryList;

  final List<TheoryList> _theoryList;
  @override
  @JsonKey()
  List<TheoryList> get theoryList {
    if (_theoryList is EqualUnmodifiableListView) return _theoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_theoryList);
  }

  final List<TheoryList> _filteredTheoryList;
  @override
  @JsonKey()
  List<TheoryList> get filteredTheoryList {
    if (_filteredTheoryList is EqualUnmodifiableListView)
      return _filteredTheoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredTheoryList);
  }

  @override
  String toString() {
    return 'TheoryState(theoryList: $theoryList, filteredTheoryList: $filteredTheoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TheoryState &&
            const DeepCollectionEquality()
                .equals(other._theoryList, _theoryList) &&
            const DeepCollectionEquality()
                .equals(other._filteredTheoryList, _filteredTheoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_theoryList),
      const DeepCollectionEquality().hash(_filteredTheoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TheoryStateCopyWith<_$_TheoryState> get copyWith =>
      __$$_TheoryStateCopyWithImpl<_$_TheoryState>(this, _$identity);
}

abstract class _TheoryState implements TheoryState {
  const factory _TheoryState(
      {final List<TheoryList> theoryList,
      final List<TheoryList> filteredTheoryList}) = _$_TheoryState;

  @override
  List<TheoryList> get theoryList;
  @override
  List<TheoryList> get filteredTheoryList;
  @override
  @JsonKey(ignore: true)
  _$$_TheoryStateCopyWith<_$_TheoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
