// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_entitie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostEntitie {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostEntitieCopyWith<PostEntitie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEntitieCopyWith<$Res> {
  factory $PostEntitieCopyWith(
          PostEntitie value, $Res Function(PostEntitie) then) =
      _$PostEntitieCopyWithImpl<$Res, PostEntitie>;
  @useResult
  $Res call({int userId, int id, String title, String body});
}

/// @nodoc
class _$PostEntitieCopyWithImpl<$Res, $Val extends PostEntitie>
    implements $PostEntitieCopyWith<$Res> {
  _$PostEntitieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostEntitieCopyWith<$Res>
    implements $PostEntitieCopyWith<$Res> {
  factory _$$_PostEntitieCopyWith(
          _$_PostEntitie value, $Res Function(_$_PostEntitie) then) =
      __$$_PostEntitieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int id, String title, String body});
}

/// @nodoc
class __$$_PostEntitieCopyWithImpl<$Res>
    extends _$PostEntitieCopyWithImpl<$Res, _$_PostEntitie>
    implements _$$_PostEntitieCopyWith<$Res> {
  __$$_PostEntitieCopyWithImpl(
      _$_PostEntitie _value, $Res Function(_$_PostEntitie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$_PostEntitie(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostEntitie extends _PostEntitie {
  const _$_PostEntitie(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body})
      : super._();

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'PostEntitie(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostEntitie &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostEntitieCopyWith<_$_PostEntitie> get copyWith =>
      __$$_PostEntitieCopyWithImpl<_$_PostEntitie>(this, _$identity);
}

abstract class _PostEntitie extends PostEntitie {
  const factory _PostEntitie(
      {required final int userId,
      required final int id,
      required final String title,
      required final String body}) = _$_PostEntitie;
  const _PostEntitie._() : super._();

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_PostEntitieCopyWith<_$_PostEntitie> get copyWith =>
      throw _privateConstructorUsedError;
}
