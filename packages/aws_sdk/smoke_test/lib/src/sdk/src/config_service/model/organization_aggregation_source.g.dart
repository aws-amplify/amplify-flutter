// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_aggregation_source;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationAggregationSource extends OrganizationAggregationSource {
  @override
  final bool? allAwsRegions;
  @override
  final _i2.BuiltList<String>? awsRegions;
  @override
  final String roleArn;

  factory _$OrganizationAggregationSource(
          [void Function(OrganizationAggregationSourceBuilder)? updates]) =>
      (new OrganizationAggregationSourceBuilder()..update(updates))._build();

  _$OrganizationAggregationSource._(
      {this.allAwsRegions, this.awsRegions, required this.roleArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleArn, r'OrganizationAggregationSource', 'roleArn');
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
        allAwsRegions == other.allAwsRegions &&
        awsRegions == other.awsRegions &&
        roleArn == other.roleArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allAwsRegions.hashCode);
    _$hash = $jc(_$hash, awsRegions.hashCode);
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationAggregationSourceBuilder
    implements
        Builder<OrganizationAggregationSource,
            OrganizationAggregationSourceBuilder> {
  _$OrganizationAggregationSource? _$v;

  bool? _allAwsRegions;
  bool? get allAwsRegions => _$this._allAwsRegions;
  set allAwsRegions(bool? allAwsRegions) =>
      _$this._allAwsRegions = allAwsRegions;

  _i2.ListBuilder<String>? _awsRegions;
  _i2.ListBuilder<String> get awsRegions =>
      _$this._awsRegions ??= new _i2.ListBuilder<String>();
  set awsRegions(_i2.ListBuilder<String>? awsRegions) =>
      _$this._awsRegions = awsRegions;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  OrganizationAggregationSourceBuilder() {
    OrganizationAggregationSource._init(this);
  }

  OrganizationAggregationSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allAwsRegions = $v.allAwsRegions;
      _awsRegions = $v.awsRegions?.toBuilder();
      _roleArn = $v.roleArn;
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
              allAwsRegions: allAwsRegions,
              awsRegions: _awsRegions?.build(),
              roleArn: BuiltValueNullFieldError.checkNotNull(
                  roleArn, r'OrganizationAggregationSource', 'roleArn'));
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
