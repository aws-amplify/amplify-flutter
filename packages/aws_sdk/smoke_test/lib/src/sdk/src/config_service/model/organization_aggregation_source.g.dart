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
    return $jf($jc($jc($jc(0, allAwsRegions.hashCode), awsRegions.hashCode),
        roleArn.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
