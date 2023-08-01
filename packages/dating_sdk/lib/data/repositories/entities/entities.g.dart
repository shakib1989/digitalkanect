// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetMatchedUserEntityCollection on Isar {
  IsarCollection<MatchedUserEntity> get matchedUser => this.collection();
}

const MatchedUserEntitySchema = CollectionSchema(
  name: r'MatchedUser',
  id: 9128348139051130555,
  properties: {
    r'favorite': PropertySchema(
      id: 0,
      name: r'favorite',
      type: IsarType.bool,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    ),
    r'imageUrl': PropertySchema(
      id: 2,
      name: r'imageUrl',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'online': PropertySchema(
      id: 4,
      name: r'online',
      type: IsarType.bool,
    ),
    r'thumbnailUrl': PropertySchema(
      id: 5,
      name: r'thumbnailUrl',
      type: IsarType.string,
    ),
    r'updatedDateTime': PropertySchema(
      id: 6,
      name: r'updatedDateTime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _matchedUserEntityEstimateSize,
  serialize: _matchedUserEntitySerialize,
  deserialize: _matchedUserEntityDeserialize,
  deserializeProp: _matchedUserEntityDeserializeProp,
  idName: r'tempId',
  indexes: {
    r'id': IndexSchema(
      id: -3268401673993471357,
      name: r'id',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'id',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _matchedUserEntityGetId,
  getLinks: _matchedUserEntityGetLinks,
  attach: _matchedUserEntityAttach,
  version: '3.0.5',
);

int _matchedUserEntityEstimateSize(
  MatchedUserEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.imageUrl.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.thumbnailUrl.length * 3;
  return bytesCount;
}

void _matchedUserEntitySerialize(
  MatchedUserEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.favorite);
  writer.writeString(offsets[1], object.id);
  writer.writeString(offsets[2], object.imageUrl);
  writer.writeString(offsets[3], object.name);
  writer.writeBool(offsets[4], object.online);
  writer.writeString(offsets[5], object.thumbnailUrl);
  writer.writeDateTime(offsets[6], object.updatedDateTime);
}

MatchedUserEntity _matchedUserEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MatchedUserEntity(
    favorite: reader.readBoolOrNull(offsets[0]) ?? false,
    id: reader.readStringOrNull(offsets[1]) ?? '',
    imageUrl: reader.readStringOrNull(offsets[2]) ?? '',
    name: reader.readStringOrNull(offsets[3]) ?? '',
    online: reader.readBoolOrNull(offsets[4]) ?? true,
    thumbnailUrl: reader.readStringOrNull(offsets[5]) ?? '',
  );
  object.tempId = id;
  object.updatedDateTime = reader.readDateTime(offsets[6]);
  return object;
}

P _matchedUserEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 2:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 4:
      return (reader.readBoolOrNull(offset) ?? true) as P;
    case 5:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _matchedUserEntityGetId(MatchedUserEntity object) {
  return object.tempId;
}

List<IsarLinkBase<dynamic>> _matchedUserEntityGetLinks(
    MatchedUserEntity object) {
  return [];
}

void _matchedUserEntityAttach(
    IsarCollection<dynamic> col, Id id, MatchedUserEntity object) {
  object.tempId = id;
}

extension MatchedUserEntityByIndex on IsarCollection<MatchedUserEntity> {
  Future<MatchedUserEntity?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  MatchedUserEntity? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<MatchedUserEntity?>> getAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<MatchedUserEntity?> getAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'id', values);
  }

  Future<int> deleteAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'id', values);
  }

  int deleteAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'id', values);
  }

  Future<Id> putById(MatchedUserEntity object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(MatchedUserEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<MatchedUserEntity> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(List<MatchedUserEntity> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }
}

extension MatchedUserEntityQueryWhereSort
    on QueryBuilder<MatchedUserEntity, MatchedUserEntity, QWhere> {
  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterWhere> anyTempId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MatchedUserEntityQueryWhere
    on QueryBuilder<MatchedUserEntity, MatchedUserEntity, QWhereClause> {
  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterWhereClause>
      tempIdEqualTo(Id tempId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: tempId,
        upper: tempId,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterWhereClause>
      tempIdNotEqualTo(Id tempId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: tempId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tempId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: tempId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: tempId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterWhereClause>
      tempIdGreaterThan(Id tempId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: tempId, includeLower: include),
      );
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterWhereClause>
      tempIdLessThan(Id tempId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: tempId, includeUpper: include),
      );
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterWhereClause>
      tempIdBetween(
    Id lowerTempId,
    Id upperTempId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerTempId,
        includeLower: includeLower,
        upper: upperTempId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterWhereClause>
      idEqualTo(String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id',
        value: [id],
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterWhereClause>
      idNotEqualTo(String id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ));
      }
    });
  }
}

extension MatchedUserEntityQueryFilter
    on QueryBuilder<MatchedUserEntity, MatchedUserEntity, QFilterCondition> {
  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      favoriteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'favorite',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      imageUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      imageUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      imageUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      imageUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      imageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      imageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      imageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      imageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      onlineEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'online',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      tempIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tempId',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      tempIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tempId',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      tempIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tempId',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      tempIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tempId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      thumbnailUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      thumbnailUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      thumbnailUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      thumbnailUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumbnailUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      thumbnailUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      thumbnailUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      thumbnailUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'thumbnailUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      thumbnailUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'thumbnailUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      thumbnailUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnailUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      thumbnailUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'thumbnailUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      updatedDateTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      updatedDateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      updatedDateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterFilterCondition>
      updatedDateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedDateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MatchedUserEntityQueryObject
    on QueryBuilder<MatchedUserEntity, MatchedUserEntity, QFilterCondition> {}

extension MatchedUserEntityQueryLinks
    on QueryBuilder<MatchedUserEntity, MatchedUserEntity, QFilterCondition> {}

extension MatchedUserEntityQuerySortBy
    on QueryBuilder<MatchedUserEntity, MatchedUserEntity, QSortBy> {
  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'online', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByOnlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'online', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByThumbnailUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByThumbnailUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      sortByUpdatedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.desc);
    });
  }
}

extension MatchedUserEntityQuerySortThenBy
    on QueryBuilder<MatchedUserEntity, MatchedUserEntity, QSortThenBy> {
  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'online', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByOnlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'online', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByTempId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempId', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByTempIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tempId', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByThumbnailUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByThumbnailUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumbnailUrl', Sort.desc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.asc);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QAfterSortBy>
      thenByUpdatedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedDateTime', Sort.desc);
    });
  }
}

extension MatchedUserEntityQueryWhereDistinct
    on QueryBuilder<MatchedUserEntity, MatchedUserEntity, QDistinct> {
  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QDistinct>
      distinctByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'favorite');
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QDistinct>
      distinctByImageUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QDistinct>
      distinctByOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'online');
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QDistinct>
      distinctByThumbnailUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'thumbnailUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MatchedUserEntity, MatchedUserEntity, QDistinct>
      distinctByUpdatedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedDateTime');
    });
  }
}

extension MatchedUserEntityQueryProperty
    on QueryBuilder<MatchedUserEntity, MatchedUserEntity, QQueryProperty> {
  QueryBuilder<MatchedUserEntity, int, QQueryOperations> tempIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tempId');
    });
  }

  QueryBuilder<MatchedUserEntity, bool, QQueryOperations> favoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'favorite');
    });
  }

  QueryBuilder<MatchedUserEntity, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MatchedUserEntity, String, QQueryOperations> imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrl');
    });
  }

  QueryBuilder<MatchedUserEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<MatchedUserEntity, bool, QQueryOperations> onlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'online');
    });
  }

  QueryBuilder<MatchedUserEntity, String, QQueryOperations>
      thumbnailUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thumbnailUrl');
    });
  }

  QueryBuilder<MatchedUserEntity, DateTime, QQueryOperations>
      updatedDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedDateTime');
    });
  }
}
