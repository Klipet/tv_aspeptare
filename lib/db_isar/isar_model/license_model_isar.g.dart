// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_model_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLicenseModelIsarCollection on Isar {
  IsarCollection<LicenseModelIsar> get licenseModelIsars => this.collection();
}

const LicenseModelIsarSchema = CollectionSchema(
  name: r'LicenseModelIsar',
  id: 2675278010958361100,
  properties: {
    r'apikey': PropertySchema(
      id: 0,
      name: r'apikey',
      type: IsarType.string,
    ),
    r'company': PropertySchema(
      id: 1,
      name: r'company',
      type: IsarType.string,
    ),
    r'licenseCode': PropertySchema(
      id: 2,
      name: r'licenseCode',
      type: IsarType.string,
    ),
    r'uri': PropertySchema(
      id: 3,
      name: r'uri',
      type: IsarType.string,
    )
  },
  estimateSize: _licenseModelIsarEstimateSize,
  serialize: _licenseModelIsarSerialize,
  deserialize: _licenseModelIsarDeserialize,
  deserializeProp: _licenseModelIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _licenseModelIsarGetId,
  getLinks: _licenseModelIsarGetLinks,
  attach: _licenseModelIsarAttach,
  version: '3.1.0+1',
);

int _licenseModelIsarEstimateSize(
  LicenseModelIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apikey.length * 3;
  bytesCount += 3 + object.company.length * 3;
  bytesCount += 3 + object.licenseCode.length * 3;
  bytesCount += 3 + object.uri.length * 3;
  return bytesCount;
}

void _licenseModelIsarSerialize(
  LicenseModelIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apikey);
  writer.writeString(offsets[1], object.company);
  writer.writeString(offsets[2], object.licenseCode);
  writer.writeString(offsets[3], object.uri);
}

LicenseModelIsar _licenseModelIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LicenseModelIsar();
  object.apikey = reader.readString(offsets[0]);
  object.company = reader.readString(offsets[1]);
  object.id = id;
  object.licenseCode = reader.readString(offsets[2]);
  object.uri = reader.readString(offsets[3]);
  return object;
}

P _licenseModelIsarDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _licenseModelIsarGetId(LicenseModelIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _licenseModelIsarGetLinks(LicenseModelIsar object) {
  return [];
}

void _licenseModelIsarAttach(
    IsarCollection<dynamic> col, Id id, LicenseModelIsar object) {
  object.id = id;
}

extension LicenseModelIsarQueryWhereSort
    on QueryBuilder<LicenseModelIsar, LicenseModelIsar, QWhere> {
  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LicenseModelIsarQueryWhere
    on QueryBuilder<LicenseModelIsar, LicenseModelIsar, QWhereClause> {
  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterWhereClause>
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

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterWhereClause> idBetween(
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

extension LicenseModelIsarQueryFilter
    on QueryBuilder<LicenseModelIsar, LicenseModelIsar, QFilterCondition> {
  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      apikeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apikey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      apikeyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apikey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      apikeyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apikey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      apikeyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apikey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      apikeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'apikey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      apikeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'apikey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      apikeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'apikey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      apikeyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'apikey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      apikeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apikey',
        value: '',
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      apikeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'apikey',
        value: '',
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      companyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      companyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      companyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      companyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'company',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      companyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      companyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      companyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      companyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'company',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
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

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
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

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
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

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      licenseCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'licenseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      licenseCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'licenseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      licenseCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'licenseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      licenseCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'licenseCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      licenseCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'licenseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      licenseCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'licenseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      licenseCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'licenseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      licenseCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'licenseCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      licenseCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'licenseCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      licenseCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'licenseCode',
        value: '',
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      uriEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      uriGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      uriLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      uriBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uri',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      uriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      uriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      uriContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      uriMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uri',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      uriIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uri',
        value: '',
      ));
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterFilterCondition>
      uriIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uri',
        value: '',
      ));
    });
  }
}

extension LicenseModelIsarQueryObject
    on QueryBuilder<LicenseModelIsar, LicenseModelIsar, QFilterCondition> {}

extension LicenseModelIsarQueryLinks
    on QueryBuilder<LicenseModelIsar, LicenseModelIsar, QFilterCondition> {}

extension LicenseModelIsarQuerySortBy
    on QueryBuilder<LicenseModelIsar, LicenseModelIsar, QSortBy> {
  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      sortByApikey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apikey', Sort.asc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      sortByApikeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apikey', Sort.desc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      sortByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      sortByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      sortByLicenseCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'licenseCode', Sort.asc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      sortByLicenseCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'licenseCode', Sort.desc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy> sortByUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.asc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      sortByUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.desc);
    });
  }
}

extension LicenseModelIsarQuerySortThenBy
    on QueryBuilder<LicenseModelIsar, LicenseModelIsar, QSortThenBy> {
  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      thenByApikey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apikey', Sort.asc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      thenByApikeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apikey', Sort.desc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      thenByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      thenByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      thenByLicenseCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'licenseCode', Sort.asc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      thenByLicenseCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'licenseCode', Sort.desc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy> thenByUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.asc);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QAfterSortBy>
      thenByUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.desc);
    });
  }
}

extension LicenseModelIsarQueryWhereDistinct
    on QueryBuilder<LicenseModelIsar, LicenseModelIsar, QDistinct> {
  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QDistinct> distinctByApikey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apikey', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QDistinct> distinctByCompany(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'company', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QDistinct>
      distinctByLicenseCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'licenseCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LicenseModelIsar, LicenseModelIsar, QDistinct> distinctByUri(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uri', caseSensitive: caseSensitive);
    });
  }
}

extension LicenseModelIsarQueryProperty
    on QueryBuilder<LicenseModelIsar, LicenseModelIsar, QQueryProperty> {
  QueryBuilder<LicenseModelIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LicenseModelIsar, String, QQueryOperations> apikeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apikey');
    });
  }

  QueryBuilder<LicenseModelIsar, String, QQueryOperations> companyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'company');
    });
  }

  QueryBuilder<LicenseModelIsar, String, QQueryOperations>
      licenseCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'licenseCode');
    });
  }

  QueryBuilder<LicenseModelIsar, String, QQueryOperations> uriProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uri');
    });
  }
}
