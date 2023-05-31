import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entitie.freezed.dart';

@freezed
class UserEntitie with _$UserEntitie {
  const UserEntitie._();
  const factory UserEntitie({
    required int id,
    required String name,
    required String email,
    required String phone,
  }) = _UserEntitie;
}
