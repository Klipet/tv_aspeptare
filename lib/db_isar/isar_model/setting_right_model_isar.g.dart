// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_right_model_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingRightModelCollection on Isar {
  IsarCollection<SettingRightModel> get settingRightModels => this.collection();
}

const SettingRightModelSchema = CollectionSchema(
  name: r'SettingRightModel',
  id: 8266094472517000101,
  properties: {
    r'alignmentString': PropertySchema(
      id: 0,
      name: r'alignmentString',
      type: IsarType.string,
    ),
    r'rightColorBorder': PropertySchema(
      id: 1,
      name: r'rightColorBorder',
      type: IsarType.string,
    ),
    r'rightColorText': PropertySchema(
      id: 2,
      name: r'rightColorText',
      type: IsarType.string,
    ),
    r'rightColorTitleBox': PropertySchema(
      id: 3,
      name: r'rightColorTitleBox',
      type: IsarType.string,
    ),
    r'rightColumnColor': PropertySchema(
      id: 4,
      name: r'rightColumnColor',
      type: IsarType.string,
    ),
    r'rightSizeBorder': PropertySchema(
      id: 5,
      name: r'rightSizeBorder',
      type: IsarType.double,
    ),
    r'rightSizeText': PropertySchema(
      id: 6,
      name: r'rightSizeText',
      type: IsarType.double,
    ),
    r'styleColumnRight': PropertySchema(
      id: 7,
      name: r'styleColumnRight',
      type: IsarType.string,
    ),
    r'textRightTitle': PropertySchema(
      id: 8,
      name: r'textRightTitle',
      type: IsarType.string,
    )
  },
  estimateSize: _settingRightModelEstimateSize,
  serialize: _settingRightModelSerialize,
  deserialize: _settingRightModelDeserialize,
  deserializeProp: _settingRightModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingRightModelGetId,
  getLinks: _settingRightModelGetLinks,
  attach: _settingRightModelAttach,
  version: '3.1.0+1',
);

int _settingRightModelEstimateSize(
  SettingRightModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.alignmentString.length * 3;
  bytesCount += 3 + object.rightColorBorder.length * 3;
  bytesCount += 3 + object.rightColorText.length * 3;
  bytesCount += 3 + object.rightColorTitleBox.length * 3;
  bytesCount += 3 + object.rightColumnColor.length * 3;
  bytesCount += 3 + object.styleColumnRight.length * 3;
  bytesCount += 3 + object.textRightTitle.length * 3;
  return bytesCount;
}

void _settingRightModelSerialize(
  SettingRightModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.alignmentString);
  writer.writeString(offsets[1], object.rightColorBorder);
  writer.writeString(offsets[2], object.rightColorText);
  writer.writeString(offsets[3], object.rightColorTitleBox);
  writer.writeString(offsets[4], object.rightColumnColor);
  writer.writeDouble(offsets[5], object.rightSizeBorder);
  writer.writeDouble(offsets[6], object.rightSizeText);
  writer.writeString(offsets[7], object.styleColumnRight);
  writer.writeString(offsets[8], object.textRightTitle);
}

SettingRightModel _settingRightModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SettingRightModel();
  object.alignmentString = reader.readString(offsets[0]);
  object.id = id;
  object.rightColorBorder = reader.readString(offsets[1]);
  object.rightColorText = reader.readString(offsets[2]);
  object.rightColorTitleBox = reader.readString(offsets[3]);
  object.rightColumnColor = reader.readString(offsets[4]);
  object.rightSizeBorder = reader.readDouble(offsets[5]);
  object.rightSizeText = reader.readDouble(offsets[6]);
  object.styleColumnRight = reader.readString(offsets[7]);
  object.textRightTitle = reader.readString(offsets[8]);
  return object;
}

P _settingRightModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _settingRightModelGetId(SettingRightModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingRightModelGetLinks(
    SettingRightModel object) {
  return [];
}

void _settingRightModelAttach(
    IsarCollection<dynamic> col, Id id, SettingRightModel object) {
  object.id = id;
}

extension SettingRightModelQueryWhereSort
    on QueryBuilder<SettingRightModel, SettingRightModel, QWhere> {
  QueryBuilder<SettingRightModel, SettingRightModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingRightModelQueryWhere
    on QueryBuilder<SettingRightModel, SettingRightModel, QWhereClause> {
  QueryBuilder<SettingRightModel, SettingRightModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterWhereClause>
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

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterWhereClause>
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

extension SettingRightModelQueryFilter
    on QueryBuilder<SettingRightModel, SettingRightModel, QFilterCondition> {
  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      alignmentStringEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alignmentString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      alignmentStringGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'alignmentString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      alignmentStringLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'alignmentString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      alignmentStringBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'alignmentString',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      alignmentStringStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'alignmentString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      alignmentStringEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'alignmentString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      alignmentStringContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'alignmentString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      alignmentStringMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'alignmentString',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      alignmentStringIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alignmentString',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      alignmentStringIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'alignmentString',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
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

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
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

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
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

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorBorderEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorBorderGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorBorderLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorBorderBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightColorBorder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorBorderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rightColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorBorderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rightColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorBorderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rightColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorBorderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rightColorBorder',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorBorderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightColorBorder',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorBorderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rightColorBorder',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightColorText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rightColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rightColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rightColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rightColorText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightColorText',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rightColorText',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTitleBoxEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightColorTitleBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTitleBoxGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightColorTitleBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTitleBoxLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightColorTitleBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTitleBoxBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightColorTitleBox',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTitleBoxStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rightColorTitleBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTitleBoxEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rightColorTitleBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTitleBoxContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rightColorTitleBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTitleBoxMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rightColorTitleBox',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTitleBoxIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightColorTitleBox',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColorTitleBoxIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rightColorTitleBox',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColumnColorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColumnColorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColumnColorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColumnColorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightColumnColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColumnColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rightColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColumnColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rightColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColumnColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rightColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColumnColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rightColumnColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColumnColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightColumnColor',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightColumnColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rightColumnColor',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightSizeBorderEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightSizeBorder',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightSizeBorderGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightSizeBorder',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightSizeBorderLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightSizeBorder',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightSizeBorderBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightSizeBorder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightSizeTextEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightSizeText',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightSizeTextGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightSizeText',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightSizeTextLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightSizeText',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      rightSizeTextBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightSizeText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      styleColumnRightEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'styleColumnRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      styleColumnRightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'styleColumnRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      styleColumnRightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'styleColumnRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      styleColumnRightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'styleColumnRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      styleColumnRightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'styleColumnRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      styleColumnRightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'styleColumnRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      styleColumnRightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'styleColumnRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      styleColumnRightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'styleColumnRight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      styleColumnRightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'styleColumnRight',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      styleColumnRightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'styleColumnRight',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      textRightTitleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textRightTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      textRightTitleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textRightTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      textRightTitleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textRightTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      textRightTitleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textRightTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      textRightTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textRightTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      textRightTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textRightTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      textRightTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textRightTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      textRightTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textRightTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      textRightTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textRightTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterFilterCondition>
      textRightTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textRightTitle',
        value: '',
      ));
    });
  }
}

extension SettingRightModelQueryObject
    on QueryBuilder<SettingRightModel, SettingRightModel, QFilterCondition> {}

extension SettingRightModelQueryLinks
    on QueryBuilder<SettingRightModel, SettingRightModel, QFilterCondition> {}

extension SettingRightModelQuerySortBy
    on QueryBuilder<SettingRightModel, SettingRightModel, QSortBy> {
  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByAlignmentString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alignmentString', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByAlignmentStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alignmentString', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightColorBorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorBorder', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightColorBorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorBorder', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorText', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorText', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightColorTitleBox() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorTitleBox', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightColorTitleBoxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorTitleBox', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightColumnColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColumnColor', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightColumnColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColumnColor', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightSizeBorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightSizeBorder', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightSizeBorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightSizeBorder', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightSizeText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightSizeText', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByRightSizeTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightSizeText', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByStyleColumnRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleColumnRight', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByStyleColumnRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleColumnRight', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByTextRightTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textRightTitle', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      sortByTextRightTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textRightTitle', Sort.desc);
    });
  }
}

extension SettingRightModelQuerySortThenBy
    on QueryBuilder<SettingRightModel, SettingRightModel, QSortThenBy> {
  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByAlignmentString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alignmentString', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByAlignmentStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alignmentString', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightColorBorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorBorder', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightColorBorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorBorder', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorText', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorText', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightColorTitleBox() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorTitleBox', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightColorTitleBoxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColorTitleBox', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightColumnColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColumnColor', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightColumnColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightColumnColor', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightSizeBorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightSizeBorder', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightSizeBorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightSizeBorder', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightSizeText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightSizeText', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByRightSizeTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightSizeText', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByStyleColumnRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleColumnRight', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByStyleColumnRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleColumnRight', Sort.desc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByTextRightTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textRightTitle', Sort.asc);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QAfterSortBy>
      thenByTextRightTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textRightTitle', Sort.desc);
    });
  }
}

extension SettingRightModelQueryWhereDistinct
    on QueryBuilder<SettingRightModel, SettingRightModel, QDistinct> {
  QueryBuilder<SettingRightModel, SettingRightModel, QDistinct>
      distinctByAlignmentString({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'alignmentString',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QDistinct>
      distinctByRightColorBorder({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightColorBorder',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QDistinct>
      distinctByRightColorText({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightColorText',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QDistinct>
      distinctByRightColorTitleBox({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightColorTitleBox',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QDistinct>
      distinctByRightColumnColor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightColumnColor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QDistinct>
      distinctByRightSizeBorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightSizeBorder');
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QDistinct>
      distinctByRightSizeText() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightSizeText');
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QDistinct>
      distinctByStyleColumnRight({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'styleColumnRight',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingRightModel, SettingRightModel, QDistinct>
      distinctByTextRightTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textRightTitle',
          caseSensitive: caseSensitive);
    });
  }
}

extension SettingRightModelQueryProperty
    on QueryBuilder<SettingRightModel, SettingRightModel, QQueryProperty> {
  QueryBuilder<SettingRightModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SettingRightModel, String, QQueryOperations>
      alignmentStringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'alignmentString');
    });
  }

  QueryBuilder<SettingRightModel, String, QQueryOperations>
      rightColorBorderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightColorBorder');
    });
  }

  QueryBuilder<SettingRightModel, String, QQueryOperations>
      rightColorTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightColorText');
    });
  }

  QueryBuilder<SettingRightModel, String, QQueryOperations>
      rightColorTitleBoxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightColorTitleBox');
    });
  }

  QueryBuilder<SettingRightModel, String, QQueryOperations>
      rightColumnColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightColumnColor');
    });
  }

  QueryBuilder<SettingRightModel, double, QQueryOperations>
      rightSizeBorderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightSizeBorder');
    });
  }

  QueryBuilder<SettingRightModel, double, QQueryOperations>
      rightSizeTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightSizeText');
    });
  }

  QueryBuilder<SettingRightModel, String, QQueryOperations>
      styleColumnRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'styleColumnRight');
    });
  }

  QueryBuilder<SettingRightModel, String, QQueryOperations>
      textRightTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textRightTitle');
    });
  }
}
