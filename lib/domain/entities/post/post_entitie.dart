import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'post_entitie.freezed.dart';
part 'post_entitie.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class PostEntitie with _$PostEntitie {
  const PostEntitie._();
  const factory PostEntitie({
    required int userId,
    required int id,
    required String title,
    required String postDetail,
  }) = _PostEntitie;

  Id get idLocal => Isar.autoIncrement;
}
