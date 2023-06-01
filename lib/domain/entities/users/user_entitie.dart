import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'user_entitie.freezed.dart';
part 'user_entitie.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class UserEntitie with _$UserEntitie {
  const UserEntitie._();
  const factory UserEntitie({
    required int id,
    required String fullName,
    required String email,
    required String phone,
  }) = _UserEntitie;

  Id get idLocal => Isar.autoIncrement;
}
