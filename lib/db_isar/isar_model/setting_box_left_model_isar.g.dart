// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_box_left_model_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingBoxLeftModelCollection on Isar {
  IsarCollection<SettingBoxLeftModel> get settingBoxLeftModels =>
      this.collection();
}

const SettingBoxLeftModelSchema = CollectionSchema(
  name: r'SettingBoxLeftModel',
  id: -730053287551233571,
  properties: {
    r'backgroundBoxColorLeft': PropertySchema(
      id: 0,
      name: r'backgroundBoxColorLeft',
      type: IsarType.string,
    ),
    r'borderBoxLeft': PropertySchema(
      id: 1,
      name: r'borderBoxLeft',
      type: IsarType.bool,
    ),
    r'boxBorderColorLeft': PropertySchema(
      id: 2,
      name: r'boxBorderColorLeft',
      type: IsarType.string,
    ),
    r'heightBoxLeft': PropertySchema(
      id: 3,
      name: r'heightBoxLeft',
      type: IsarType.double,
    ),
    r'radiusBoxLeft': PropertySchema(
      id: 4,
      name: r'radiusBoxLeft',
      type: IsarType.double,
    ),
    r'sizeBorderLeft': PropertySchema(
      id: 5,
      name: r'sizeBorderLeft',
      type: IsarType.double,
    ),
    r'sizeTextLeft': PropertySchema(
      id: 6,
      name: r'sizeTextLeft',
      type: IsarType.double,
    ),
    r'styleBoxLeft': PropertySchema(
      id: 7,
      name: r'styleBoxLeft',
      type: IsarType.string,
    ),
    r'textBoxColorLeft': PropertySchema(
      id: 8,
      name: r'textBoxColorLeft',
      type: IsarType.string,
    ),
    r'widthBoxLeft': PropertySchema(
      id: 9,
      name: r'widthBoxLeft',
      type: IsarType.double,
    )
  },
  estimateSize: _settingBoxLeftModelEstimateSize,
  serialize: _settingBoxLeftModelSerialize,
  deserialize: _settingBoxLeftModelDeserialize,
  deserializeProp: _settingBoxLeftModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingBoxLeftModelGetId,
  getLinks: _settingBoxLeftModelGetLinks,
  attach: _settingBoxLeftModelAttach,
  version: '3.1.0+1',
);

int _settingBoxLeftModelEstimateSize(
  SettingBoxLeftModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.backgroundBoxColorLeft.length * 3;
  bytesCount += 3 + object.boxBorderColorLeft.length * 3;
  bytesCount += 3 + object.styleBoxLeft.length * 3;
  bytesCount += 3 + object.textBoxColorLeft.length * 3;
  return bytesCount;
}

void _settingBoxLeftModelSerialize(
  SettingBoxLeftModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.backgroundBoxColorLeft);
  writer.writeBool(offsets[1], object.borderBoxLeft);
  writer.writeString(offsets[2], object.boxBorderColorLeft);
  writer.writeDouble(offsets[3], object.heightBoxLeft);
  writer.writeDouble(offsets[4], object.radiusBoxLeft);
  writer.writeDouble(offsets[5], object.sizeBorderLeft);
  writer.writeDouble(offsets[6], object.sizeTextLeft);
  writer.writeString(offsets[7], object.styleBoxLeft);
  writer.writeString(offsets[8], object.textBoxColorLeft);
  writer.writeDouble(offsets[9], object.widthBoxLeft);
}

SettingBoxLeftModel _settingBoxLeftModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SettingBoxLeftModel();
  object.backgroundBoxColorLeft = reader.readString(offsets[0]);
  object.borderBoxLeft = reader.readBool(offsets[1]);
  object.boxBorderColorLeft = reader.readString(offsets[2]);
  object.heightBoxLeft = reader.readDouble(offsets[3]);
  object.id = id;
  object.radiusBoxLeft = reader.readDouble(offsets[4]);
  object.sizeBorderLeft = reader.readDouble(offsets[5]);
  object.sizeTextLeft = reader.readDouble(offsets[6]);
  object.styleBoxLeft = reader.readString(offsets[7]);
  object.textBoxColorLeft = reader.readString(offsets[8]);
  object.widthBoxLeft = reader.readDouble(offsets[9]);
  return object;
}

P _settingBoxLeftModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _settingBoxLeftModelGetId(SettingBoxLeftModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingBoxLeftModelGetLinks(
    SettingBoxLeftModel object) {
  return [];
}

void _settingBoxLeftModelAttach(
    IsarCollection<dynamic> col, Id id, SettingBoxLeftModel object) {
  object.id = id;
}

extension SettingBoxLeftModelQueryWhereSort
    on QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QWhere> {
  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingBoxLeftModelQueryWhere
    on QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QWhereClause> {
  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SettingBoxLeftModelQueryFilter on QueryBuilder<SettingBoxLeftModel,
    SettingBoxLeftModel, QFilterCondition> {
  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      backgroundBoxColorLeftEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroundBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      backgroundBoxColorLeftGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backgroundBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      backgroundBoxColorLeftLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backgroundBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      backgroundBoxColorLeftBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backgroundBoxColorLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      backgroundBoxColorLeftStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backgroundBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      backgroundBoxColorLeftEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backgroundBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      backgroundBoxColorLeftContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backgroundBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      backgroundBoxColorLeftMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backgroundBoxColorLeft',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      backgroundBoxColorLeftIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroundBoxColorLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      backgroundBoxColorLeftIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backgroundBoxColorLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      borderBoxLeftEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'borderBoxLeft',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      boxBorderColorLeftEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boxBorderColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      boxBorderColorLeftGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'boxBorderColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      boxBorderColorLeftLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'boxBorderColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      boxBorderColorLeftBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'boxBorderColorLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      boxBorderColorLeftStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'boxBorderColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      boxBorderColorLeftEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'boxBorderColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      boxBorderColorLeftContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'boxBorderColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      boxBorderColorLeftMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'boxBorderColorLeft',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      boxBorderColorLeftIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boxBorderColorLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      boxBorderColorLeftIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'boxBorderColorLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      heightBoxLeftEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'heightBoxLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      heightBoxLeftGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'heightBoxLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      heightBoxLeftLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'heightBoxLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      heightBoxLeftBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'heightBoxLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
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

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
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

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      radiusBoxLeftEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'radiusBoxLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      radiusBoxLeftGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'radiusBoxLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      radiusBoxLeftLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'radiusBoxLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      radiusBoxLeftBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'radiusBoxLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      sizeBorderLeftEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sizeBorderLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      sizeBorderLeftGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sizeBorderLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      sizeBorderLeftLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sizeBorderLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      sizeBorderLeftBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sizeBorderLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      sizeTextLeftEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sizeTextLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      sizeTextLeftGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sizeTextLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      sizeTextLeftLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sizeTextLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      sizeTextLeftBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sizeTextLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      styleBoxLeftEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'styleBoxLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      styleBoxLeftGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'styleBoxLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      styleBoxLeftLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'styleBoxLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      styleBoxLeftBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'styleBoxLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      styleBoxLeftStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'styleBoxLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      styleBoxLeftEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'styleBoxLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      styleBoxLeftContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'styleBoxLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      styleBoxLeftMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'styleBoxLeft',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      styleBoxLeftIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'styleBoxLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      styleBoxLeftIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'styleBoxLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      textBoxColorLeftEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      textBoxColorLeftGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      textBoxColorLeftLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      textBoxColorLeftBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textBoxColorLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      textBoxColorLeftStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      textBoxColorLeftEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      textBoxColorLeftContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textBoxColorLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      textBoxColorLeftMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textBoxColorLeft',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      textBoxColorLeftIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textBoxColorLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      textBoxColorLeftIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textBoxColorLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      widthBoxLeftEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'widthBoxLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      widthBoxLeftGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'widthBoxLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      widthBoxLeftLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'widthBoxLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterFilterCondition>
      widthBoxLeftBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'widthBoxLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension SettingBoxLeftModelQueryObject on QueryBuilder<SettingBoxLeftModel,
    SettingBoxLeftModel, QFilterCondition> {}

extension SettingBoxLeftModelQueryLinks on QueryBuilder<SettingBoxLeftModel,
    SettingBoxLeftModel, QFilterCondition> {}

extension SettingBoxLeftModelQuerySortBy
    on QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QSortBy> {
  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByBackgroundBoxColorLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundBoxColorLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByBackgroundBoxColorLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundBoxColorLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByBorderBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'borderBoxLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByBorderBoxLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'borderBoxLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByBoxBorderColorLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxBorderColorLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByBoxBorderColorLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxBorderColorLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByHeightBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightBoxLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByHeightBoxLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightBoxLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByRadiusBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radiusBoxLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByRadiusBoxLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radiusBoxLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortBySizeBorderLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBorderLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortBySizeBorderLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBorderLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortBySizeTextLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeTextLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortBySizeTextLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeTextLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByStyleBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleBoxLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByStyleBoxLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleBoxLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByTextBoxColorLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textBoxColorLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByTextBoxColorLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textBoxColorLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByWidthBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widthBoxLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      sortByWidthBoxLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widthBoxLeft', Sort.desc);
    });
  }
}

extension SettingBoxLeftModelQuerySortThenBy
    on QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QSortThenBy> {
  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByBackgroundBoxColorLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundBoxColorLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByBackgroundBoxColorLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundBoxColorLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByBorderBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'borderBoxLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByBorderBoxLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'borderBoxLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByBoxBorderColorLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxBorderColorLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByBoxBorderColorLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxBorderColorLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByHeightBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightBoxLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByHeightBoxLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightBoxLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByRadiusBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radiusBoxLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByRadiusBoxLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radiusBoxLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenBySizeBorderLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBorderLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenBySizeBorderLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBorderLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenBySizeTextLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeTextLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenBySizeTextLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeTextLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByStyleBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleBoxLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByStyleBoxLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleBoxLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByTextBoxColorLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textBoxColorLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByTextBoxColorLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textBoxColorLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByWidthBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widthBoxLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QAfterSortBy>
      thenByWidthBoxLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'widthBoxLeft', Sort.desc);
    });
  }
}

extension SettingBoxLeftModelQueryWhereDistinct
    on QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QDistinct> {
  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QDistinct>
      distinctByBackgroundBoxColorLeft({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backgroundBoxColorLeft',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QDistinct>
      distinctByBorderBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'borderBoxLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QDistinct>
      distinctByBoxBorderColorLeft({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'boxBorderColorLeft',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QDistinct>
      distinctByHeightBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'heightBoxLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QDistinct>
      distinctByRadiusBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'radiusBoxLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QDistinct>
      distinctBySizeBorderLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sizeBorderLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QDistinct>
      distinctBySizeTextLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sizeTextLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QDistinct>
      distinctByStyleBoxLeft({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'styleBoxLeft', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QDistinct>
      distinctByTextBoxColorLeft({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textBoxColorLeft',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QDistinct>
      distinctByWidthBoxLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'widthBoxLeft');
    });
  }
}

extension SettingBoxLeftModelQueryProperty
    on QueryBuilder<SettingBoxLeftModel, SettingBoxLeftModel, QQueryProperty> {
  QueryBuilder<SettingBoxLeftModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SettingBoxLeftModel, String, QQueryOperations>
      backgroundBoxColorLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backgroundBoxColorLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, bool, QQueryOperations>
      borderBoxLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'borderBoxLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, String, QQueryOperations>
      boxBorderColorLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'boxBorderColorLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, double, QQueryOperations>
      heightBoxLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'heightBoxLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, double, QQueryOperations>
      radiusBoxLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'radiusBoxLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, double, QQueryOperations>
      sizeBorderLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sizeBorderLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, double, QQueryOperations>
      sizeTextLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sizeTextLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, String, QQueryOperations>
      styleBoxLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'styleBoxLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, String, QQueryOperations>
      textBoxColorLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textBoxColorLeft');
    });
  }

  QueryBuilder<SettingBoxLeftModel, double, QQueryOperations>
      widthBoxLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'widthBoxLeft');
    });
  }
}
