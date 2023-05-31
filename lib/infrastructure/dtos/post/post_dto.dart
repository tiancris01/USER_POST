import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/post/post_entitie.dart';

part 'post_dto.freezed.dart';
part 'post_dto.g.dart';

@freezed
class PostDTO with _$PostDTO {
  const PostDTO._();
  const factory PostDTO({
    required int userId,
    required int id,
    required String title,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'body') required String postDetail,
  }) = _PostDTO;

  factory PostDTO.fromJson(Map<String, dynamic> json) =>
      _$PostDTOFromJson(json);

  factory PostDTO.fromDomain(PostEntitie post) {
    return PostDTO(
      userId: post.userId,
      id: post.id,
      title: post.title,
      postDetail: post.postDetail,
    );
  }

  PostEntitie toDomain() {
    return PostEntitie(
      userId: userId,
      id: id,
      title: title,
      postDetail: postDetail,
    );
  }
}
