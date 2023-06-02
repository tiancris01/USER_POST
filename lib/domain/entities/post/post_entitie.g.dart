// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entitie.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPostEntitieCollection on Isar {
  IsarCollection<PostEntitie> get postEntities => this.collection();
}

const PostEntitieSchema = CollectionSchema(
  name: r'PostEntitie',
  id: 5045985967874075764,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'postDetail': PropertySchema(
      id: 1,
      name: r'postDetail',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 2,
      name: r'title',
      type: IsarType.string,
    ),
    r'userId': PropertySchema(
      id: 3,
      name: r'userId',
      type: IsarType.long,
    )
  },
  estimateSize: _postEntitieEstimateSize,
  serialize: _postEntitieSerialize,
  deserialize: _postEntitieDeserialize,
  deserializeProp: _postEntitieDeserializeProp,
  idName: r'idLocal',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _postEntitieGetId,
  getLinks: _postEntitieGetLinks,
  attach: _postEntitieAttach,
  version: '3.1.0+1',
);

int _postEntitieEstimateSize(
  PostEntitie object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.postDetail.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _postEntitieSerialize(
  PostEntitie object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.postDetail);
  writer.writeString(offsets[2], object.title);
  writer.writeLong(offsets[3], object.userId);
}

PostEntitie _postEntitieDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PostEntitie(
    id: reader.readLong(offsets[0]),
    postDetail: reader.readString(offsets[1]),
    title: reader.readString(offsets[2]),
    userId: reader.readLong(offsets[3]),
  );
  return object;
}

P _postEntitieDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _postEntitieGetId(PostEntitie object) {
  return object.idLocal;
}

List<IsarLinkBase<dynamic>> _postEntitieGetLinks(PostEntitie object) {
  return [];
}

void _postEntitieAttach(
    IsarCollection<dynamic> col, Id id, PostEntitie object) {}

extension PostEntitieQueryWhereSort
    on QueryBuilder<PostEntitie, PostEntitie, QWhere> {
  QueryBuilder<PostEntitie, PostEntitie, QAfterWhere> anyIdLocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PostEntitieQueryWhere
    on QueryBuilder<PostEntitie, PostEntitie, QWhereClause> {
  QueryBuilder<PostEntitie, PostEntitie, QAfterWhereClause> idLocalEqualTo(
      Id idLocal) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idLocal,
        upper: idLocal,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterWhereClause> idLocalNotEqualTo(
      Id idLocal) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idLocal, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idLocal, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idLocal, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idLocal, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterWhereClause> idLocalGreaterThan(
      Id idLocal,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idLocal, includeLower: include),
      );
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterWhereClause> idLocalLessThan(
      Id idLocal,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idLocal, includeUpper: include),
      );
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterWhereClause> idLocalBetween(
    Id lowerIdLocal,
    Id upperIdLocal, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdLocal,
        includeLower: includeLower,
        upper: upperIdLocal,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PostEntitieQueryFilter
    on QueryBuilder<PostEntitie, PostEntitie, QFilterCondition> {
  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> idLocalEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idLocal',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      idLocalGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idLocal',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> idLocalLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idLocal',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> idLocalBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idLocal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      postDetailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postDetail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      postDetailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'postDetail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      postDetailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'postDetail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      postDetailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'postDetail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      postDetailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'postDetail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      postDetailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'postDetail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      postDetailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'postDetail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      postDetailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'postDetail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      postDetailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postDetail',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      postDetailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'postDetail',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> userIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition>
      userIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> userIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterFilterCondition> userIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PostEntitieQueryObject
    on QueryBuilder<PostEntitie, PostEntitie, QFilterCondition> {}

extension PostEntitieQueryLinks
    on QueryBuilder<PostEntitie, PostEntitie, QFilterCondition> {}

extension PostEntitieQuerySortBy
    on QueryBuilder<PostEntitie, PostEntitie, QSortBy> {
  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> sortByPostDetail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postDetail', Sort.asc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> sortByPostDetailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postDetail', Sort.desc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension PostEntitieQuerySortThenBy
    on QueryBuilder<PostEntitie, PostEntitie, QSortThenBy> {
  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> thenByIdLocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idLocal', Sort.asc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> thenByIdLocalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idLocal', Sort.desc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> thenByPostDetail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postDetail', Sort.asc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> thenByPostDetailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postDetail', Sort.desc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension PostEntitieQueryWhereDistinct
    on QueryBuilder<PostEntitie, PostEntitie, QDistinct> {
  QueryBuilder<PostEntitie, PostEntitie, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QDistinct> distinctByPostDetail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'postDetail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PostEntitie, PostEntitie, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }
}

extension PostEntitieQueryProperty
    on QueryBuilder<PostEntitie, PostEntitie, QQueryProperty> {
  QueryBuilder<PostEntitie, int, QQueryOperations> idLocalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idLocal');
    });
  }

  QueryBuilder<PostEntitie, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PostEntitie, String, QQueryOperations> postDetailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'postDetail');
    });
  }

  QueryBuilder<PostEntitie, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<PostEntitie, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
