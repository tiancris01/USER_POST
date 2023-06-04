import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_post/domain/entities/post/post_entitie.dart';

part 'post_state.freezed.dart';

@freezed
class PostState with _$PostsState {
  const PostState._();
  const factory PostState.initial() = _PostStateInitial;
  const factory PostState.loading() = _PostStateLoading;
  const factory PostState.data({required List<PostEntitie> post}) =
      _PostStateData;
  const factory PostState.error() = _PostStatEerror;
}
