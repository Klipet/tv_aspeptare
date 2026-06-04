// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_left_model_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingLeftModelCollection on Isar {
  IsarCollection<SettingLeftModel> get settingLeftModels => this.collection();
}

const SettingLeftModelSchema = CollectionSchema(
  name: r'SettingLeftModel',
  id: 3133090441699069251,
  properties: {
    r'leftColorBorder': PropertySchema(
      id: 0,
      name: r'leftColorBorder',
      type: IsarType.string,
    ),
    r'leftColorText': PropertySchema(
      id: 1,
      name: r'leftColorText',
      type: IsarType.string,
    ),
    r'leftColumnColor': PropertySchema(
      id: 2,
      name: r'leftColumnColor',
      type: IsarType.string,
    ),
    r'leftSizeBorder': PropertySchema(
      id: 3,
      name: r'leftSizeBorder',
      type: IsarType.double,
    ),
    r'leftSizeText': PropertySchema(
      id: 4,
      name: r'leftSizeText',
      type: IsarType.double,
    ),
    r'styleColumnLeft': PropertySchema(
      id: 5,
      name: r'styleColumnLeft',
      type: IsarType.string,
    ),
    r'textLeftTitle': PropertySchema(
      id: 6,
      name: r'textLeftTitle',
      type: IsarType.string,
    ),
    r'titleColorBox': PropertySchema(
      id: 7,
      name: r'titleColorBox',
      type: IsarType.string,
    )
  },
  estimateSize: _settingLeftModelEstimateSize,
  serialize: _settingLeftModelSerialize,
  deserialize: _settingLeftModelDeserialize,
  deserializeProp: _settingLeftModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingLeftModelGetId,
  getLinks: _settingLeftModelGetLinks,
  attach: _settingLeftModelAttach,
  version: '3.1.0+1',
);

int _settingLeftModelEstimateSize(
  SettingLeftModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.leftColorBorder.length * 3;
  bytesCount += 3 + object.leftColorText.length * 3;
  bytesCount += 3 + object.leftColumnColor.length * 3;
  bytesCount += 3 + object.styleColumnLeft.length * 3;
  bytesCount += 3 + object.textLeftTitle.length * 3;
  bytesCount += 3 + object.titleColorBox.length * 3;
  return bytesCount;
}

void _settingLeftModelSerialize(
  SettingLeftModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.leftColorBorder);
  writer.writeString(offsets[1], object.leftColorText);
  writer.writeString(offsets[2], object.leftColumnColor);
  writer.writeDouble(offsets[3], object.leftSizeBorder);
  writer.writeDouble(offsets[4], object.leftSizeText);
  writer.writeString(offsets[5], object.styleColumnLeft);
  writer.writeString(offsets[6], object.textLeftTitle);
  writer.writeString(offsets[7], object.titleColorBox);
}

SettingLeftModel _settingLeftModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SettingLeftModel();
  object.id = id;
  object.leftColorBorder = reader.readString(offsets[0]);
  object.leftColorText = reader.readString(offsets[1]);
  object.leftColumnColor = reader.readString(offsets[2]);
  object.leftSizeBorder = reader.readDouble(offsets[3]);
  object.leftSizeText = reader.readDouble(offsets[4]);
  object.styleColumnLeft = reader.readString(offsets[5]);
  object.textLeftTitle = reader.readString(offsets[6]);
  object.titleColorBox = reader.readString(offsets[7]);
  return object;
}

P _settingLeftModelDeserializeProp<P>(
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
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _settingLeftModelGetId(SettingLeftModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingLeftModelGetLinks(SettingLeftModel object) {
  return [];
}

void _settingLeftModelAttach(
    IsarCollection<dynamic> col, Id id, SettingLeftModel object) {
  object.id = id;
}

extension SettingLeftModelQueryWhereSort
    on QueryBuilder<SettingLeftModel, SettingLeftModel, QWhere> {
  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingLeftModelQueryWhere
    on QueryBuilder<SettingLeftModel, SettingLeftModel, QWhereClause> {
  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterWhereClause>
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

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterWhereClause> idBetween(
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

extension SettingLeftModelQueryFilter
    on QueryBuilder<SettingLeftModel, SettingLeftModel, QFilterCondition> {
  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
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

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
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

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
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

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorBorderEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorBorderGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorBorderLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorBorderBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftColorBorder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorBorderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leftColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorBorderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leftColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorBorderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leftColorBorder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorBorderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leftColorBorder',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorBorderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftColorBorder',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorBorderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leftColorBorder',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorTextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorTextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorTextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorTextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftColorText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leftColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leftColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leftColorText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leftColorText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftColorText',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColorTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leftColorText',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColumnColorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColumnColorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColumnColorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColumnColorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftColumnColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColumnColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leftColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColumnColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leftColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColumnColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leftColumnColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColumnColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leftColumnColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColumnColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftColumnColor',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftColumnColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leftColumnColor',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftSizeBorderEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftSizeBorder',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftSizeBorderGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftSizeBorder',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftSizeBorderLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftSizeBorder',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftSizeBorderBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftSizeBorder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftSizeTextEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftSizeText',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftSizeTextGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftSizeText',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftSizeTextLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftSizeText',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      leftSizeTextBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftSizeText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      styleColumnLeftEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'styleColumnLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      styleColumnLeftGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'styleColumnLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      styleColumnLeftLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'styleColumnLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      styleColumnLeftBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'styleColumnLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      styleColumnLeftStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'styleColumnLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      styleColumnLeftEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'styleColumnLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      styleColumnLeftContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'styleColumnLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      styleColumnLeftMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'styleColumnLeft',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      styleColumnLeftIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'styleColumnLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      styleColumnLeftIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'styleColumnLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      textLeftTitleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textLeftTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      textLeftTitleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textLeftTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      textLeftTitleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textLeftTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      textLeftTitleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textLeftTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      textLeftTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textLeftTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      textLeftTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textLeftTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      textLeftTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textLeftTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      textLeftTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textLeftTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      textLeftTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textLeftTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      textLeftTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textLeftTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      titleColorBoxEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titleColorBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      titleColorBoxGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titleColorBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      titleColorBoxLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titleColorBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      titleColorBoxBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titleColorBox',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      titleColorBoxStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titleColorBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      titleColorBoxEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titleColorBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      titleColorBoxContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titleColorBox',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      titleColorBoxMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titleColorBox',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      titleColorBoxIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titleColorBox',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterFilterCondition>
      titleColorBoxIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titleColorBox',
        value: '',
      ));
    });
  }
}

extension SettingLeftModelQueryObject
    on QueryBuilder<SettingLeftModel, SettingLeftModel, QFilterCondition> {}

extension SettingLeftModelQueryLinks
    on QueryBuilder<SettingLeftModel, SettingLeftModel, QFilterCondition> {}

extension SettingLeftModelQuerySortBy
    on QueryBuilder<SettingLeftModel, SettingLeftModel, QSortBy> {
  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByLeftColorBorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColorBorder', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByLeftColorBorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColorBorder', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByLeftColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColorText', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByLeftColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColorText', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByLeftColumnColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColumnColor', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByLeftColumnColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColumnColor', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByLeftSizeBorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftSizeBorder', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByLeftSizeBorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftSizeBorder', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByLeftSizeText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftSizeText', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByLeftSizeTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftSizeText', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByStyleColumnLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleColumnLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByStyleColumnLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleColumnLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByTextLeftTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textLeftTitle', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByTextLeftTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textLeftTitle', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByTitleColorBox() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleColorBox', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      sortByTitleColorBoxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleColorBox', Sort.desc);
    });
  }
}

extension SettingLeftModelQuerySortThenBy
    on QueryBuilder<SettingLeftModel, SettingLeftModel, QSortThenBy> {
  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByLeftColorBorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColorBorder', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByLeftColorBorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColorBorder', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByLeftColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColorText', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByLeftColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColorText', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByLeftColumnColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColumnColor', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByLeftColumnColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftColumnColor', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByLeftSizeBorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftSizeBorder', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByLeftSizeBorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftSizeBorder', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByLeftSizeText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftSizeText', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByLeftSizeTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftSizeText', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByStyleColumnLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleColumnLeft', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByStyleColumnLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleColumnLeft', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByTextLeftTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textLeftTitle', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByTextLeftTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textLeftTitle', Sort.desc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByTitleColorBox() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleColorBox', Sort.asc);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QAfterSortBy>
      thenByTitleColorBoxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleColorBox', Sort.desc);
    });
  }
}

extension SettingLeftModelQueryWhereDistinct
    on QueryBuilder<SettingLeftModel, SettingLeftModel, QDistinct> {
  QueryBuilder<SettingLeftModel, SettingLeftModel, QDistinct>
      distinctByLeftColorBorder({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftColorBorder',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QDistinct>
      distinctByLeftColorText({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftColorText',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QDistinct>
      distinctByLeftColumnColor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftColumnColor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QDistinct>
      distinctByLeftSizeBorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftSizeBorder');
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QDistinct>
      distinctByLeftSizeText() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftSizeText');
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QDistinct>
      distinctByStyleColumnLeft({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'styleColumnLeft',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QDistinct>
      distinctByTextLeftTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textLeftTitle',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingLeftModel, SettingLeftModel, QDistinct>
      distinctByTitleColorBox({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titleColorBox',
          caseSensitive: caseSensitive);
    });
  }
}

extension SettingLeftModelQueryProperty
    on QueryBuilder<SettingLeftModel, SettingLeftModel, QQueryProperty> {
  QueryBuilder<SettingLeftModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SettingLeftModel, String, QQueryOperations>
      leftColorBorderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftColorBorder');
    });
  }

  QueryBuilder<SettingLeftModel, String, QQueryOperations>
      leftColorTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftColorText');
    });
  }

  QueryBuilder<SettingLeftModel, String, QQueryOperations>
      leftColumnColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftColumnColor');
    });
  }

  QueryBuilder<SettingLeftModel, double, QQueryOperations>
      leftSizeBorderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftSizeBorder');
    });
  }

  QueryBuilder<SettingLeftModel, double, QQueryOperations>
      leftSizeTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftSizeText');
    });
  }

  QueryBuilder<SettingLeftModel, String, QQueryOperations>
      styleColumnLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'styleColumnLeft');
    });
  }

  QueryBuilder<SettingLeftModel, String, QQueryOperations>
      textLeftTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textLeftTitle');
    });
  }

  QueryBuilder<SettingLeftModel, String, QQueryOperations>
      titleColorBoxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titleColorBox');
    });
  }
}
