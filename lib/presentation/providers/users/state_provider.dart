import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';

part 'state_provider.freezed.dart';

@freezed
class UserState with _$UserState {
  const UserState._();
  const factory UserState.initial() = _UserStateInitial;
  const factory UserState.loading() = _UserStateLoading;
  const factory UserState.data({required UserEntitie user}) = _UserStateData;
  const factory UserState.error() = _UserStateError;
}
