import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UsersState {
  const UserState._();
  const factory UserState.initial() = _UserStateInitial;
  const factory UserState.loading() = _UserStateLoading;
  const factory UserState.data({required List<UserEntitie> user}) =
      _UserStateData;
  const factory UserState.error() = _UserStateError;
}
