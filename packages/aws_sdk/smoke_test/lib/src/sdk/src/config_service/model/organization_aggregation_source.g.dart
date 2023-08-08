// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_aggregation_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationAggregationSource extends OrganizationAggregationSource {
  @override
  final String roleArn;
  @override
  final _i2.BuiltList<String>? awsRegions;
  @override
  final bool allAwsRegions;

  factory _$OrganizationAggregationSource(
          [void Function(OrganizationAggregationSourceBuilder)? updates]) =>
      (new OrganizationAggregationSourceBuilder()..update(updates))._build();

  _$OrganizationAggregationSource._(
      {required this.roleArn, this.awsRegions, required this.allAwsRegions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleArn, r'OrganizationAggregationSource', 'roleArn');
    BuiltValueNullFieldError.checkNotNull(
        allAwsRegions, r'OrganizationAggregationSource', 'allAwsRegions');
  }

  @override
  OrganizationAggregationSource rebuild(
          void Function(OrganizationAggregationSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationAggregationSourceBuilder toBuilder() =>
      new OrganizationAggregationSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationAggregationSource &&
        roleArn == other.roleArn &&
        awsRegions == other.awsRegions &&
        allAwsRegions == other.allAwsRegions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, awsRegions.hashCode);
    _$hash = $jc(_$hash, allAwsRegions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationAggregationSourceBuilder
    implements
        Builder<OrganizationAggregationSource,
            OrganizationAggregationSourceBuilder> {
  _$OrganizationAggregationSource? _$v;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  _i2.ListBuilder<String>? _awsRegions;
  _i2.ListBuilder<String> get awsRegions =>
      _$this._awsRegions ??= new _i2.ListBuilder<String>();
  set awsRegions(_i2.ListBuilder<String>? awsRegions) =>
      _$this._awsRegions = awsRegions;

  bool? _allAwsRegions;
  bool? get allAwsRegions => _$this._allAwsRegions;
  set allAwsRegions(bool? allAwsRegions) =>
      _$this._allAwsRegions = allAwsRegions;

  OrganizationAggregationSourceBuilder() {
    OrganizationAggregationSource._init(this);
  }

  OrganizationAggregationSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleArn = $v.roleArn;
      _awsRegions = $v.awsRegions?.toBuilder();
      _allAwsRegions = $v.allAwsRegions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationAggregationSource other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationAggregationSource;
  }

  @override
  void update(void Function(OrganizationAggregationSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationAggregationSource build() => _build();

  _$OrganizationAggregationSource _build() {
    _$OrganizationAggregationSource _$result;
    try {
      _$result = _$v ??
          new _$OrganizationAggregationSource._(
              roleArn: BuiltValueNullFieldError.checkNotNull(
                  roleArn, r'OrganizationAggregationSource', 'roleArn'),
              awsRegions: _awsRegions?.build(),
              allAwsRegions: BuiltValueNullFieldError.checkNotNull(
                  allAwsRegions,
                  r'OrganizationAggregationSource',
                  'allAwsRegions'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'awsRegions';
        _awsRegions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrganizationAggregationSource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
