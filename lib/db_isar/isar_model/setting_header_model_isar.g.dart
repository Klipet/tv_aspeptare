// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_header_model_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingsHeaderModelCollection on Isar {
  IsarCollection<SettingsHeaderModel> get settingsHeaderModels =>
      this.collection();
}

const SettingsHeaderModelSchema = CollectionSchema(
  name: r'SettingsHeaderModel',
  id: 2575578283872252330,
  properties: {
    r'animatie': PropertySchema(
      id: 0,
      name: r'animatie',
      type: IsarType.string,
    ),
    r'deleteActive': PropertySchema(
      id: 1,
      name: r'deleteActive',
      type: IsarType.bool,
    ),
    r'deleteHours': PropertySchema(
      id: 2,
      name: r'deleteHours',
      type: IsarType.long,
    ),
    r'paddingHeader': PropertySchema(
      id: 3,
      name: r'paddingHeader',
      type: IsarType.double,
    ),
    r'selectedImagePath': PropertySchema(
      id: 4,
      name: r'selectedImagePath',
      type: IsarType.string,
    ),
    r'sizeBox': PropertySchema(
      id: 5,
      name: r'sizeBox',
      type: IsarType.long,
    ),
    r'sizeText': PropertySchema(
      id: 6,
      name: r'sizeText',
      type: IsarType.double,
    ),
    r'sizeToolBar': PropertySchema(
      id: 7,
      name: r'sizeToolBar',
      type: IsarType.double,
    ),
    r'soundActive': PropertySchema(
      id: 8,
      name: r'soundActive',
      type: IsarType.bool,
    ),
    r'sounds': PropertySchema(
      id: 9,
      name: r'sounds',
      type: IsarType.string,
    ),
    r'styleTitle': PropertySchema(
      id: 10,
      name: r'styleTitle',
      type: IsarType.string,
    ),
    r'textTitle': PropertySchema(
      id: 11,
      name: r'textTitle',
      type: IsarType.string,
    ),
    r'videoPlayer': PropertySchema(
      id: 12,
      name: r'videoPlayer',
      type: IsarType.bool,
    )
  },
  estimateSize: _settingsHeaderModelEstimateSize,
  serialize: _settingsHeaderModelSerialize,
  deserialize: _settingsHeaderModelDeserialize,
  deserializeProp: _settingsHeaderModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingsHeaderModelGetId,
  getLinks: _settingsHeaderModelGetLinks,
  attach: _settingsHeaderModelAttach,
  version: '3.1.0+1',
);

int _settingsHeaderModelEstimateSize(
  SettingsHeaderModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.animatie.length * 3;
  {
    final value = object.selectedImagePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.sounds.length * 3;
  bytesCount += 3 + object.styleTitle.length * 3;
  bytesCount += 3 + object.textTitle.length * 3;
  return bytesCount;
}

void _settingsHeaderModelSerialize(
  SettingsHeaderModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.animatie);
  writer.writeBool(offsets[1], object.deleteActive);
  writer.writeLong(offsets[2], object.deleteHours);
  writer.writeDouble(offsets[3], object.paddingHeader);
  writer.writeString(offsets[4], object.selectedImagePath);
  writer.writeLong(offsets[5], object.sizeBox);
  writer.writeDouble(offsets[6], object.sizeText);
  writer.writeDouble(offsets[7], object.sizeToolBar);
  writer.writeBool(offsets[8], object.soundActive);
  writer.writeString(offsets[9], object.sounds);
  writer.writeString(offsets[10], object.styleTitle);
  writer.writeString(offsets[11], object.textTitle);
  writer.writeBool(offsets[12], object.videoPlayer);
}

SettingsHeaderModel _settingsHeaderModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SettingsHeaderModel();
  object.animatie = reader.readString(offsets[0]);
  object.deleteActive = reader.readBool(offsets[1]);
  object.deleteHours = reader.readLong(offsets[2]);
  object.id = id;
  object.paddingHeader = reader.readDouble(offsets[3]);
  object.selectedImagePath = reader.readStringOrNull(offsets[4]);
  object.sizeBox = reader.readLong(offsets[5]);
  object.sizeText = reader.readDouble(offsets[6]);
  object.sizeToolBar = reader.readDouble(offsets[7]);
  object.soundActive = reader.readBool(offsets[8]);
  object.sounds = reader.readString(offsets[9]);
  object.styleTitle = reader.readString(offsets[10]);
  object.textTitle = reader.readString(offsets[11]);
  object.videoPlayer = reader.readBool(offsets[12]);
  return object;
}

P _settingsHeaderModelDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _settingsHeaderModelGetId(SettingsHeaderModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingsHeaderModelGetLinks(
    SettingsHeaderModel object) {
  return [];
}

void _settingsHeaderModelAttach(
    IsarCollection<dynamic> col, Id id, SettingsHeaderModel object) {
  object.id = id;
}

extension SettingsHeaderModelQueryWhereSort
    on QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QWhere> {
  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingsHeaderModelQueryWhere
    on QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QWhereClause> {
  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterWhereClause>
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

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterWhereClause>
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

extension SettingsHeaderModelQueryFilter on QueryBuilder<SettingsHeaderModel,
    SettingsHeaderModel, QFilterCondition> {
  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      animatieEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animatie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      animatieGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'animatie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      animatieLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'animatie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      animatieBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'animatie',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      animatieStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'animatie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      animatieEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'animatie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      animatieContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'animatie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      animatieMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'animatie',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      animatieIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'animatie',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      animatieIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'animatie',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      deleteActiveEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      deleteHoursEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deleteHours',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      deleteHoursGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deleteHours',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      deleteHoursLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deleteHours',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      deleteHoursBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deleteHours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
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

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
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

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
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

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      paddingHeaderEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paddingHeader',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      paddingHeaderGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paddingHeader',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      paddingHeaderLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paddingHeader',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      paddingHeaderBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paddingHeader',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'selectedImagePath',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'selectedImagePath',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedImagePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'selectedImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'selectedImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedImagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      selectedImagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeBoxEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sizeBox',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeBoxGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sizeBox',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeBoxLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sizeBox',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeBoxBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sizeBox',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeTextEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sizeText',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeTextGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sizeText',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeTextLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sizeText',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeTextBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sizeText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeToolBarEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sizeToolBar',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeToolBarGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sizeToolBar',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeToolBarLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sizeToolBar',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      sizeToolBarBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sizeToolBar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      soundActiveEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'soundActive',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      soundsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sounds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      soundsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sounds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      soundsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sounds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      soundsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sounds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      soundsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sounds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      soundsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sounds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      soundsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sounds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      soundsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sounds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      soundsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sounds',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      soundsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sounds',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      styleTitleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'styleTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      styleTitleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'styleTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      styleTitleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'styleTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      styleTitleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'styleTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      styleTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'styleTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      styleTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'styleTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      styleTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'styleTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      styleTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'styleTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      styleTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'styleTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      styleTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'styleTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      textTitleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      textTitleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      textTitleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      textTitleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      textTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      textTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      textTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      textTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      textTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      textTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterFilterCondition>
      videoPlayerEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'videoPlayer',
        value: value,
      ));
    });
  }
}

extension SettingsHeaderModelQueryObject on QueryBuilder<SettingsHeaderModel,
    SettingsHeaderModel, QFilterCondition> {}

extension SettingsHeaderModelQueryLinks on QueryBuilder<SettingsHeaderModel,
    SettingsHeaderModel, QFilterCondition> {}

extension SettingsHeaderModelQuerySortBy
    on QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QSortBy> {
  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByAnimatie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animatie', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByAnimatieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animatie', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByDeleteActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteActive', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByDeleteActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteActive', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByDeleteHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteHours', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByDeleteHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteHours', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByPaddingHeader() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paddingHeader', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByPaddingHeaderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paddingHeader', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySelectedImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedImagePath', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySelectedImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedImagePath', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySizeBox() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBox', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySizeBoxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBox', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySizeText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeText', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySizeTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeText', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySizeToolBar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeToolBar', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySizeToolBarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeToolBar', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySoundActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soundActive', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySoundActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soundActive', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySounds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sounds', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortBySoundsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sounds', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByStyleTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleTitle', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByStyleTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleTitle', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByTextTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textTitle', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByTextTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textTitle', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByVideoPlayer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoPlayer', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      sortByVideoPlayerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoPlayer', Sort.desc);
    });
  }
}

extension SettingsHeaderModelQuerySortThenBy
    on QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QSortThenBy> {
  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByAnimatie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animatie', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByAnimatieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'animatie', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByDeleteActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteActive', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByDeleteActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteActive', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByDeleteHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteHours', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByDeleteHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deleteHours', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByPaddingHeader() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paddingHeader', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByPaddingHeaderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paddingHeader', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySelectedImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedImagePath', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySelectedImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedImagePath', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySizeBox() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBox', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySizeBoxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeBox', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySizeText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeText', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySizeTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeText', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySizeToolBar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeToolBar', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySizeToolBarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeToolBar', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySoundActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soundActive', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySoundActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'soundActive', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySounds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sounds', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenBySoundsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sounds', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByStyleTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleTitle', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByStyleTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'styleTitle', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByTextTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textTitle', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByTextTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textTitle', Sort.desc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByVideoPlayer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoPlayer', Sort.asc);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QAfterSortBy>
      thenByVideoPlayerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoPlayer', Sort.desc);
    });
  }
}

extension SettingsHeaderModelQueryWhereDistinct
    on QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct> {
  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctByAnimatie({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'animatie', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctByDeleteActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteActive');
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctByDeleteHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deleteHours');
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctByPaddingHeader() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paddingHeader');
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctBySelectedImagePath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedImagePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctBySizeBox() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sizeBox');
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctBySizeText() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sizeText');
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctBySizeToolBar() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sizeToolBar');
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctBySoundActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'soundActive');
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctBySounds({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sounds', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctByStyleTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'styleTitle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctByTextTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textTitle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QDistinct>
      distinctByVideoPlayer() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'videoPlayer');
    });
  }
}

extension SettingsHeaderModelQueryProperty
    on QueryBuilder<SettingsHeaderModel, SettingsHeaderModel, QQueryProperty> {
  QueryBuilder<SettingsHeaderModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SettingsHeaderModel, String, QQueryOperations>
      animatieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'animatie');
    });
  }

  QueryBuilder<SettingsHeaderModel, bool, QQueryOperations>
      deleteActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteActive');
    });
  }

  QueryBuilder<SettingsHeaderModel, int, QQueryOperations>
      deleteHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deleteHours');
    });
  }

  QueryBuilder<SettingsHeaderModel, double, QQueryOperations>
      paddingHeaderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paddingHeader');
    });
  }

  QueryBuilder<SettingsHeaderModel, String?, QQueryOperations>
      selectedImagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedImagePath');
    });
  }

  QueryBuilder<SettingsHeaderModel, int, QQueryOperations> sizeBoxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sizeBox');
    });
  }

  QueryBuilder<SettingsHeaderModel, double, QQueryOperations>
      sizeTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sizeText');
    });
  }

  QueryBuilder<SettingsHeaderModel, double, QQueryOperations>
      sizeToolBarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sizeToolBar');
    });
  }

  QueryBuilder<SettingsHeaderModel, bool, QQueryOperations>
      soundActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'soundActive');
    });
  }

  QueryBuilder<SettingsHeaderModel, String, QQueryOperations> soundsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sounds');
    });
  }

  QueryBuilder<SettingsHeaderModel, String, QQueryOperations>
      styleTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'styleTitle');
    });
  }

  QueryBuilder<SettingsHeaderModel, String, QQueryOperations>
      textTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textTitle');
    });
  }

  QueryBuilder<SettingsHeaderModel, bool, QQueryOperations>
      videoPlayerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'videoPlayer');
    });
  }
}
