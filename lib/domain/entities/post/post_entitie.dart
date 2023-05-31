import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_entitie.freezed.dart';

@freezed
class PostEntitie with _$PostEntitie {
  const PostEntitie._();
  const factory PostEntitie({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _PostEntitie;
}
