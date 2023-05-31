import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_post/domain/entities/users/user_entitie.dart';

part '../user_dto.freezed.dart';
part '../user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    required int id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'name') required String fullName,
    required String email,
    required String phone,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(UserEntitie user) {
    return UserDTO(
      id: user.id,
      fullName: user.fullName,
      email: user.email,
      phone: user.phone,
    );
  }

  UserEntitie toDomain() {
    return UserEntitie(
      id: id,
      fullName: fullName,
      email: email,
      phone: phone,
    );
  }
}
