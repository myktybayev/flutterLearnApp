// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Theory {
  String get title => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TheoryCopyWith<Theory> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TheoryCopyWith<$Res> {
  factory $TheoryCopyWith(Theory value, $Res Function(Theory) then) =
      _$TheoryCopyWithImpl<$Res, Theory>;
  @useResult
  $Res call({String title, int progress, String imageUrl, bool isSaved});
}

/// @nodoc
class _$TheoryCopyWithImpl<$Res, $Val extends Theory>
    implements $TheoryCopyWith<$Res> {
  _$TheoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? progress = null,
    Object? imageUrl = null,
    Object? isSaved = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TheoryCopyWith<$Res> implements $TheoryCopyWith<$Res> {
  factory _$$_TheoryCopyWith(_$_Theory value, $Res Function(_$_Theory) then) =
      __$$_TheoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int progress, String imageUrl, bool isSaved});
}

/// @nodoc
class __$$_TheoryCopyWithImpl<$Res>
    extends _$TheoryCopyWithImpl<$Res, _$_Theory>
    implements _$$_TheoryCopyWith<$Res> {
  __$$_TheoryCopyWithImpl(_$_Theory _value, $Res Function(_$_Theory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? progress = null,
    Object? imageUrl = null,
    Object? isSaved = null,
  }) {
    return _then(_$_Theory(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Theory implements _Theory {
  const _$_Theory(
      {required this.title,
      required this.progress,
      required this.imageUrl,
      this.isSaved = false});

  @override
  final String title;
  @override
  final int progress;
  @override
  final String imageUrl;
  @override
  @JsonKey()
  final bool isSaved;

  @override
  String toString() {
    return 'Theory(title: $title, progress: $progress, imageUrl: $imageUrl, isSaved: $isSaved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Theory &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, progress, imageUrl, isSaved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TheoryCopyWith<_$_Theory> get copyWith =>
      __$$_TheoryCopyWithImpl<_$_Theory>(this, _$identity);
}

abstract class _Theory implements Theory {
  const factory _Theory(
      {required final String title,
      required final int progress,
      required final String imageUrl,
      final bool isSaved}) = _$_Theory;

  @override
  String get title;
  @override
  int get progress;
  @override
  String get imageUrl;
  @override
  bool get isSaved;
  @override
  @JsonKey(ignore: true)
  _$$_TheoryCopyWith<_$_Theory> get copyWith =>
      throw _privateConstructorUsedError;
}
