// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_box_right_model_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingBoxRightModelCollection on Isar {
  IsarCollection<SettingBoxRightModel> get settingBoxRightModels =>
      this.collection();
}

const SettingBoxRightModelSchema = CollectionSchema(
  name: r'SettingBoxRightModel',
  id: 2653430508096242582,
  properties: {
    r'backgroundBoxColorRight': PropertySchema(
      id: 0,
      name: r'backgroundBoxColorRight',
      type: IsarType.string,
    ),
    r'borderBoxRight': PropertySchema(
      id: 1,
      name: r'borderBoxRight',
      type: IsarType.bool,
    ),
    r'boxBorderColorRight': PropertySchema(
      id: 2,
      name: r'boxBorderColorRight',
      type: IsarType.string,
    ),
    r'heightBoxRight': PropertySchema(
      id: 3,
      name: r'heightBoxRight',
      type: IsarType.double,
    ),
    r'radiusBoxRight': PropertySchema(
      id: 4,
      name: r'radiusBoxRight',
      type: IsarType.double,
    ),
    r'sizeBorderRight': PropertySchema(
      id: 5,
      name: r'sizeBorderRight',
      type: IsarType.double,
    ),
    r'sizeTextRight': PropertySchema(
      id: 6,
      name: r'sizeTextRight',
      type: IsarType.double,
    ),
    r'styleBoxRight': PropertySchema(
      id: 7,
      name: r'styleBoxRight',
      type: IsarType.string,
    ),
    r'textBoxColorRight': PropertySchema(
      id: 8,
      name: r'textBoxColorRight',
      type: IsarType.string,
    ),
    r'wightBoxRight': PropertySchema(
      id: 9,
      name: r'wightBoxRight',
      type: IsarType.double,
    )
  },
  estimateSize: _settingBoxRightModelEstimateSize,
  serialize: _settingBoxRightModelSerialize,
  deserialize: _settingBoxRightModelDeserialize,
  deserializeProp: _settingBoxRightModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingBoxRightModelGetId,
  getLinks: _settingBoxRightModelGetLinks,
  attach: _settingBoxRightModelAttach,
  version: '3.1.0+1',
);

int _settingBoxRightModelEstimateSize(
  SettingBoxRightModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.backgroundBoxColorRight.length * 3;
  bytesCount += 3 + object.boxBorderColorRight.length * 3;
  bytesCount += 3 + object.styleBoxRight.length * 3;
  bytesCount += 3 + object.textBoxColorRight.length * 3;
  return bytesCount;
}

void _settingBoxRightModelSerialize(
  SettingBoxRightModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.backgroundBoxColorRight);
  writer.writeBool(offsets[1], object.borderBoxRight);
  writer.writeString(offsets[2], object.boxBorderColorRight);
  writer.writeDouble(offsets[3], object.heightBoxRight);
  writer.writeDouble(offsets[4], object.radiusBoxRight);
  writer.writeDouble(offsets[5], object.sizeBorderRight);
  writer.writeDouble(offsets[6], object.sizeTextRight);
  writer.writeString(offsets[7], object.styleBoxRight);
  writer.writeString(offsets[8], object.textBoxColorRight);
  writer.writeDouble(offsets[9], object.wightBoxRight);
}

SettingBoxRightModel _settingBoxRightModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SettingBoxRightModel();
  object.backgroundBoxColorRight = reader.readString(offsets[0]);
  object.borderBoxRight = reader.readBool(offsets[1]);
  object.boxBorderColorRight = reader.readString(offsets[2]);
  object.heightBoxRight = reader.readDouble(offsets[3]);
  object.id = id;
  object.radiusBoxRight = reader.readDouble(offsets[4]);
  object.sizeBorderRight = reader.readDouble(offsets[5]);
  object.sizeTextRight = reader.readDouble(offsets[6]);
  object.styleBoxRight = reader.readString(offsets[7]);
  object.textBoxColorRight = reader.readString(offsets[8]);
  object.wightBoxRight = reader.readDouble(offsets[9]);
  return object;
}

P _settingBoxRightModelDeserializeProp<P>(
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

Id _settingBoxRightModelGetId(SettingBoxRightModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingBoxRightModelGetLinks(
    SettingBoxRightModel object) {
  return [];
}

void _settingBoxRightModelAttach(
    IsarCollection<dynamic> col, Id id, SettingBoxRightModel object) {
  object.id = id;
}

extension SettingBoxRightModelQueryWhereSort
    on QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QWhere> {
  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingBoxRightModelQueryWhere
    on QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QWhereClause> {
  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterWhereClause>
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

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterWhereClause>
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

extension SettingBoxRightModelQueryFilter on QueryBuilder<SettingBoxRightModel,
    SettingBoxRightModel, QFilterCondition> {
  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> backgroundBoxColorRightEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroundBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> backgroundBoxColorRightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backgroundBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> backgroundBoxColorRightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backgroundBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> backgroundBoxColorRightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backgroundBoxColorRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> backgroundBoxColorRightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backgroundBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> backgroundBoxColorRightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backgroundBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
          QAfterFilterCondition>
      backgroundBoxColorRightContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backgroundBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
          QAfterFilterCondition>
      backgroundBoxColorRightMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backgroundBoxColorRight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> backgroundBoxColorRightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroundBoxColorRight',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> backgroundBoxColorRightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backgroundBoxColorRight',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> borderBoxRightEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'borderBoxRight',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> boxBorderColorRightEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boxBorderColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> boxBorderColorRightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'boxBorderColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> boxBorderColorRightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'boxBorderColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> boxBorderColorRightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'boxBorderColorRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> boxBorderColorRightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'boxBorderColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> boxBorderColorRightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'boxBorderColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
          QAfterFilterCondition>
      boxBorderColorRightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'boxBorderColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
          QAfterFilterCondition>
      boxBorderColorRightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'boxBorderColorRight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> boxBorderColorRightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boxBorderColorRight',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> boxBorderColorRightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'boxBorderColorRight',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> heightBoxRightEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'heightBoxRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> heightBoxRightGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'heightBoxRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> heightBoxRightLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'heightBoxRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> heightBoxRightBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'heightBoxRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> radiusBoxRightEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'radiusBoxRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> radiusBoxRightGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'radiusBoxRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> radiusBoxRightLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'radiusBoxRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> radiusBoxRightBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'radiusBoxRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> sizeBorderRightEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sizeBorderRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> sizeBorderRightGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sizeBorderRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> sizeBorderRightLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sizeBorderRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> sizeBorderRightBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sizeBorderRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> sizeTextRightEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sizeTextRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> sizeTextRightGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sizeTextRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> sizeTextRightLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sizeTextRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> sizeTextRightBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sizeTextRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> styleBoxRightEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'styleBoxRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> styleBoxRightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'styleBoxRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> styleBoxRightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'styleBoxRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> styleBoxRightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'styleBoxRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> styleBoxRightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'styleBoxRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> styleBoxRightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'styleBoxRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
          QAfterFilterCondition>
      styleBoxRightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'styleBoxRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
          QAfterFilterCondition>
      styleBoxRightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'styleBoxRight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> styleBoxRightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'styleBoxRight',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> styleBoxRightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'styleBoxRight',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> textBoxColorRightEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> textBoxColorRightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> textBoxColorRightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> textBoxColorRightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textBoxColorRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> textBoxColorRightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> textBoxColorRightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
          QAfterFilterCondition>
      textBoxColorRightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textBoxColorRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
          QAfterFilterCondition>
      textBoxColorRightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textBoxColorRight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> textBoxColorRightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textBoxColorRight',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> textBoxColorRightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textBoxColorRight',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> wightBoxRightEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wightBoxRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> wightBoxRightGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wightBoxRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> wightBoxRightLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wightBoxRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel,
      QAfterFilterCondition> wightBoxRightBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wightBoxRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension SettingBoxRightModelQueryObject on QueryBuilder<SettingBoxRightModel,
    SettingBoxRightModel, QFilterCondition> {}

extension SettingBoxRightModelQueryLinks on QueryBuilder<SettingBoxRightModel,
    SettingBoxRightModel, QFilterCondition> {}

extension SettingBoxRightModelQuerySortBy
    on QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QSortBy> {
  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByBackgroundBoxColorRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundBoxColorRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByBackgroundBoxColorRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundBoxColorRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByBorderBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'borderBoxRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByBorderBoxRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'borderBoxRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByBoxBorderColorRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxBorderColorRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByBoxBorderColorRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxBorderColorRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByHeightBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightBoxRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByHeightBoxRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightBoxRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByRadiusBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radiusBoxRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByRadiusBoxRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radiusBoxRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortBySizeBorderRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBorderRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortBySizeBorderRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBorderRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortBySizeTextRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeTextRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortBySizeTextRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeTextRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByStyleBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleBoxRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByStyleBoxRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleBoxRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByTextBoxColorRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textBoxColorRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByTextBoxColorRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textBoxColorRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByWightBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wightBoxRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      sortByWightBoxRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wightBoxRight', Sort.desc);
    });
  }
}

extension SettingBoxRightModelQuerySortThenBy
    on QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QSortThenBy> {
  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByBackgroundBoxColorRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundBoxColorRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByBackgroundBoxColorRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundBoxColorRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByBorderBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'borderBoxRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByBorderBoxRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'borderBoxRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByBoxBorderColorRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxBorderColorRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByBoxBorderColorRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boxBorderColorRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByHeightBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightBoxRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByHeightBoxRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightBoxRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByRadiusBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radiusBoxRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByRadiusBoxRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radiusBoxRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenBySizeBorderRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBorderRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenBySizeBorderRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBorderRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenBySizeTextRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeTextRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenBySizeTextRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeTextRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByStyleBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleBoxRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByStyleBoxRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleBoxRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByTextBoxColorRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textBoxColorRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByTextBoxColorRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textBoxColorRight', Sort.desc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByWightBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wightBoxRight', Sort.asc);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QAfterSortBy>
      thenByWightBoxRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wightBoxRight', Sort.desc);
    });
  }
}

extension SettingBoxRightModelQueryWhereDistinct
    on QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QDistinct> {
  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QDistinct>
      distinctByBackgroundBoxColorRight({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backgroundBoxColorRight',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QDistinct>
      distinctByBorderBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'borderBoxRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QDistinct>
      distinctByBoxBorderColorRight({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'boxBorderColorRight',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QDistinct>
      distinctByHeightBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'heightBoxRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QDistinct>
      distinctByRadiusBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'radiusBoxRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QDistinct>
      distinctBySizeBorderRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sizeBorderRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QDistinct>
      distinctBySizeTextRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sizeTextRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QDistinct>
      distinctByStyleBoxRight({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'styleBoxRight',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QDistinct>
      distinctByTextBoxColorRight({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textBoxColorRight',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingBoxRightModel, SettingBoxRightModel, QDistinct>
      distinctByWightBoxRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wightBoxRight');
    });
  }
}

extension SettingBoxRightModelQueryProperty on QueryBuilder<
    SettingBoxRightModel, SettingBoxRightModel, QQueryProperty> {
  QueryBuilder<SettingBoxRightModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SettingBoxRightModel, String, QQueryOperations>
      backgroundBoxColorRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backgroundBoxColorRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, bool, QQueryOperations>
      borderBoxRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'borderBoxRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, String, QQueryOperations>
      boxBorderColorRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'boxBorderColorRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, double, QQueryOperations>
      heightBoxRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'heightBoxRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, double, QQueryOperations>
      radiusBoxRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'radiusBoxRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, double, QQueryOperations>
      sizeBorderRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sizeBorderRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, double, QQueryOperations>
      sizeTextRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sizeTextRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, String, QQueryOperations>
      styleBoxRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'styleBoxRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, String, QQueryOperations>
      textBoxColorRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textBoxColorRight');
    });
  }

  QueryBuilder<SettingBoxRightModel, double, QQueryOperations>
      wightBoxRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wightBoxRight');
    });
  }
}
