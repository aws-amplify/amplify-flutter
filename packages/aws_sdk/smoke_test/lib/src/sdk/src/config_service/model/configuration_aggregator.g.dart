// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.configuration_aggregator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigurationAggregator extends ConfigurationAggregator {
  @override
  final _i4.BuiltList<_i2.AccountAggregationSource>? accountAggregationSources;
  @override
  final String? configurationAggregatorArn;
  @override
  final String? configurationAggregatorName;
  @override
  final String? createdBy;
  @override
  final DateTime? creationTime;
  @override
  final DateTime? lastUpdatedTime;
  @override
  final _i3.OrganizationAggregationSource? organizationAggregationSource;

  factory _$ConfigurationAggregator(
          [void Function(ConfigurationAggregatorBuilder)? updates]) =>
      (new ConfigurationAggregatorBuilder()..update(updates))._build();

  _$ConfigurationAggregator._(
      {this.accountAggregationSources,
      this.configurationAggregatorArn,
      this.configurationAggregatorName,
      this.createdBy,
      this.creationTime,
      this.lastUpdatedTime,
      this.organizationAggregationSource})
      : super._();

  @override
  ConfigurationAggregator rebuild(
          void Function(ConfigurationAggregatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigurationAggregatorBuilder toBuilder() =>
      new ConfigurationAggregatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigurationAggregator &&
        accountAggregationSources == other.accountAggregationSources &&
        configurationAggregatorArn == other.configurationAggregatorArn &&
        configurationAggregatorName == other.configurationAggregatorName &&
        createdBy == other.createdBy &&
        creationTime == other.creationTime &&
        lastUpdatedTime == other.lastUpdatedTime &&
        organizationAggregationSource == other.organizationAggregationSource;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, accountAggregationSources.hashCode),
                            configurationAggregatorArn.hashCode),
                        configurationAggregatorName.hashCode),
                    createdBy.hashCode),
                creationTime.hashCode),
            lastUpdatedTime.hashCode),
        organizationAggregationSource.hashCode));
  }
}

class ConfigurationAggregatorBuilder
    implements
        Builder<ConfigurationAggregator, ConfigurationAggregatorBuilder> {
  _$ConfigurationAggregator? _$v;

  _i4.ListBuilder<_i2.AccountAggregationSource>? _accountAggregationSources;
  _i4.ListBuilder<_i2.AccountAggregationSource> get accountAggregationSources =>
      _$this._accountAggregationSources ??=
          new _i4.ListBuilder<_i2.AccountAggregationSource>();
  set accountAggregationSources(
          _i4.ListBuilder<_i2.AccountAggregationSource>?
              accountAggregationSources) =>
      _$this._accountAggregationSources = accountAggregationSources;

  String? _configurationAggregatorArn;
  String? get configurationAggregatorArn => _$this._configurationAggregatorArn;
  set configurationAggregatorArn(String? configurationAggregatorArn) =>
      _$this._configurationAggregatorArn = configurationAggregatorArn;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  DateTime? _lastUpdatedTime;
  DateTime? get lastUpdatedTime => _$this._lastUpdatedTime;
  set lastUpdatedTime(DateTime? lastUpdatedTime) =>
      _$this._lastUpdatedTime = lastUpdatedTime;

  _i3.OrganizationAggregationSourceBuilder? _organizationAggregationSource;
  _i3.OrganizationAggregationSourceBuilder get organizationAggregationSource =>
      _$this._organizationAggregationSource ??=
          new _i3.OrganizationAggregationSourceBuilder();
  set organizationAggregationSource(
          _i3.OrganizationAggregationSourceBuilder?
              organizationAggregationSource) =>
      _$this._organizationAggregationSource = organizationAggregationSource;

  ConfigurationAggregatorBuilder() {
    ConfigurationAggregator._init(this);
  }

  ConfigurationAggregatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountAggregationSources = $v.accountAggregationSources?.toBuilder();
      _configurationAggregatorArn = $v.configurationAggregatorArn;
      _configurationAggregatorName = $v.configurationAggregatorName;
      _createdBy = $v.createdBy;
      _creationTime = $v.creationTime;
      _lastUpdatedTime = $v.lastUpdatedTime;
      _organizationAggregationSource =
          $v.organizationAggregationSource?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigurationAggregator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigurationAggregator;
  }

  @override
  void update(void Function(ConfigurationAggregatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigurationAggregator build() => _build();

  _$ConfigurationAggregator _build() {
    _$ConfigurationAggregator _$result;
    try {
      _$result = _$v ??
          new _$ConfigurationAggregator._(
              accountAggregationSources: _accountAggregationSources?.build(),
              configurationAggregatorArn: configurationAggregatorArn,
              configurationAggregatorName: configurationAggregatorName,
              createdBy: createdBy,
              creationTime: creationTime,
              lastUpdatedTime: lastUpdatedTime,
              organizationAggregationSource:
                  _organizationAggregationSource?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountAggregationSources';
        _accountAggregationSources?.build();

        _$failedField = 'organizationAggregationSource';
        _organizationAggregationSource?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConfigurationAggregator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
