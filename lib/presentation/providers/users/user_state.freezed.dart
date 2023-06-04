// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntitie> user) data,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntitie> user)? data,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntitie> user)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateData value) data,
    required TResult Function(_UserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateData value)? data,
    TResult? Function(_UserStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateData value)? data,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UsersStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserStateInitialCopyWith<$Res> {
  factory _$$_UserStateInitialCopyWith(
          _$_UserStateInitial value, $Res Function(_$_UserStateInitial) then) =
      __$$_UserStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserStateInitialCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_UserStateInitial>
    implements _$$_UserStateInitialCopyWith<$Res> {
  __$$_UserStateInitialCopyWithImpl(
      _$_UserStateInitial _value, $Res Function(_$_UserStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserStateInitial extends _UserStateInitial {
  const _$_UserStateInitial() : super._();

  @override
  String toString() {
    return 'UsersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntitie> user) data,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntitie> user)? data,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntitie> user)? data,
    TResult Function()? error,
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
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateData value) data,
    required TResult Function(_UserStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateData value)? data,
    TResult? Function(_UserStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateData value)? data,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserStateInitial extends UserState {
  const factory _UserStateInitial() = _$_UserStateInitial;
  const _UserStateInitial._() : super._();
}

/// @nodoc
abstract class _$$_UserStateLoadingCopyWith<$Res> {
  factory _$$_UserStateLoadingCopyWith(
          _$_UserStateLoading value, $Res Function(_$_UserStateLoading) then) =
      __$$_UserStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserStateLoadingCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_UserStateLoading>
    implements _$$_UserStateLoadingCopyWith<$Res> {
  __$$_UserStateLoadingCopyWithImpl(
      _$_UserStateLoading _value, $Res Function(_$_UserStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserStateLoading extends _UserStateLoading {
  const _$_UserStateLoading() : super._();

  @override
  String toString() {
    return 'UsersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntitie> user) data,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntitie> user)? data,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntitie> user)? data,
    TResult Function()? error,
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
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateData value) data,
    required TResult Function(_UserStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateData value)? data,
    TResult? Function(_UserStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateData value)? data,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserStateLoading extends UserState {
  const factory _UserStateLoading() = _$_UserStateLoading;
  const _UserStateLoading._() : super._();
}

/// @nodoc
abstract class _$$_UserStateDataCopyWith<$Res> {
  factory _$$_UserStateDataCopyWith(
          _$_UserStateData value, $Res Function(_$_UserStateData) then) =
      __$$_UserStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserEntitie> user});
}

/// @nodoc
class __$$_UserStateDataCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_UserStateData>
    implements _$$_UserStateDataCopyWith<$Res> {
  __$$_UserStateDataCopyWithImpl(
      _$_UserStateData _value, $Res Function(_$_UserStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_UserStateData(
      user: null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<UserEntitie>,
    ));
  }
}

/// @nodoc

class _$_UserStateData extends _UserStateData {
  const _$_UserStateData({required final List<UserEntitie> user})
      : _user = user,
        super._();

  final List<UserEntitie> _user;
  @override
  List<UserEntitie> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  String toString() {
    return 'UsersState.data(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStateData &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateDataCopyWith<_$_UserStateData> get copyWith =>
      __$$_UserStateDataCopyWithImpl<_$_UserStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntitie> user) data,
    required TResult Function() error,
  }) {
    return data(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntitie> user)? data,
    TResult? Function()? error,
  }) {
    return data?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntitie> user)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateData value) data,
    required TResult Function(_UserStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateData value)? data,
    TResult? Function(_UserStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateData value)? data,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _UserStateData extends UserState {
  const factory _UserStateData({required final List<UserEntitie> user}) =
      _$_UserStateData;
  const _UserStateData._() : super._();

  List<UserEntitie> get user;
  @JsonKey(ignore: true)
  _$$_UserStateDataCopyWith<_$_UserStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserStateErrorCopyWith<$Res> {
  factory _$$_UserStateErrorCopyWith(
          _$_UserStateError value, $Res Function(_$_UserStateError) then) =
      __$$_UserStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserStateErrorCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_UserStateError>
    implements _$$_UserStateErrorCopyWith<$Res> {
  __$$_UserStateErrorCopyWithImpl(
      _$_UserStateError _value, $Res Function(_$_UserStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserStateError extends _UserStateError {
  const _$_UserStateError() : super._();

  @override
  String toString() {
    return 'UsersState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntitie> user) data,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntitie> user)? data,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntitie> user)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateData value) data,
    required TResult Function(_UserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateData value)? data,
    TResult? Function(_UserStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateData value)? data,
    TResult Function(_UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserStateError extends UserState {
  const factory _UserStateError() = _$_UserStateError;
  const _UserStateError._() : super._();
}
