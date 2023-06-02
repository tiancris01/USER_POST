// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostDTO _$PostDTOFromJson(Map<String, dynamic> json) {
  return _PostDTO.fromJson(json);
}

/// @nodoc
mixin _$PostDTO {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'body')
  String get postDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDTOCopyWith<PostDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDTOCopyWith<$Res> {
  factory $PostDTOCopyWith(PostDTO value, $Res Function(PostDTO) then) =
      _$PostDTOCopyWithImpl<$Res, PostDTO>;
  @useResult
  $Res call(
      {int userId,
      int id,
      String title,
      @JsonKey(name: 'body') String postDetail});
}

/// @nodoc
class _$PostDTOCopyWithImpl<$Res, $Val extends PostDTO>
    implements $PostDTOCopyWith<$Res> {
  _$PostDTOCopyWithImpl(this._value, this._then);

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
    Object? postDetail = null,
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
      postDetail: null == postDetail
          ? _value.postDetail
          : postDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostDTOCopyWith<$Res> implements $PostDTOCopyWith<$Res> {
  factory _$$_PostDTOCopyWith(
          _$_PostDTO value, $Res Function(_$_PostDTO) then) =
      __$$_PostDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      int id,
      String title,
      @JsonKey(name: 'body') String postDetail});
}

/// @nodoc
class __$$_PostDTOCopyWithImpl<$Res>
    extends _$PostDTOCopyWithImpl<$Res, _$_PostDTO>
    implements _$$_PostDTOCopyWith<$Res> {
  __$$_PostDTOCopyWithImpl(_$_PostDTO _value, $Res Function(_$_PostDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? postDetail = null,
  }) {
    return _then(_$_PostDTO(
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
      postDetail: null == postDetail
          ? _value.postDetail
          : postDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostDTO extends _PostDTO {
  const _$_PostDTO(
      {required this.userId,
      required this.id,
      required this.title,
      @JsonKey(name: 'body') required this.postDetail})
      : super._();

  factory _$_PostDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PostDTOFromJson(json);

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'body')
  final String postDetail;

  @override
  String toString() {
    return 'PostDTO(userId: $userId, id: $id, title: $title, postDetail: $postDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostDTO &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.postDetail, postDetail) ||
                other.postDetail == postDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, postDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostDTOCopyWith<_$_PostDTO> get copyWith =>
      __$$_PostDTOCopyWithImpl<_$_PostDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostDTOToJson(
      this,
    );
  }
}

abstract class _PostDTO extends PostDTO {
  const factory _PostDTO(
      {required final int userId,
      required final int id,
      required final String title,
      @JsonKey(name: 'body') required final String postDetail}) = _$_PostDTO;
  const _PostDTO._() : super._();

  factory _PostDTO.fromJson(Map<String, dynamic> json) = _$_PostDTO.fromJson;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'body')
  String get postDetail;
  @override
  @JsonKey(ignore: true)
  _$$_PostDTOCopyWith<_$_PostDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
