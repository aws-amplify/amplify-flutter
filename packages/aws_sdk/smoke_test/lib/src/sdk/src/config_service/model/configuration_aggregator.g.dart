// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.configuration_aggregator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigurationAggregator extends ConfigurationAggregator {
  @override
  final String? configurationAggregatorName;
  @override
  final String? configurationAggregatorArn;
  @override
  final _i4.BuiltList<_i2.AccountAggregationSource>? accountAggregationSources;
  @override
  final _i3.OrganizationAggregationSource? organizationAggregationSource;
  @override
  final DateTime? creationTime;
  @override
  final DateTime? lastUpdatedTime;
  @override
  final String? createdBy;

  factory _$ConfigurationAggregator(
          [void Function(ConfigurationAggregatorBuilder)? updates]) =>
      (new ConfigurationAggregatorBuilder()..update(updates))._build();

  _$ConfigurationAggregator._(
      {this.configurationAggregatorName,
      this.configurationAggregatorArn,
      this.accountAggregationSources,
      this.organizationAggregationSource,
      this.creationTime,
      this.lastUpdatedTime,
      this.createdBy})
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
        configurationAggregatorName == other.configurationAggregatorName &&
        configurationAggregatorArn == other.configurationAggregatorArn &&
        accountAggregationSources == other.accountAggregationSources &&
        organizationAggregationSource == other.organizationAggregationSource &&
        creationTime == other.creationTime &&
        lastUpdatedTime == other.lastUpdatedTime &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, configurationAggregatorArn.hashCode);
    _$hash = $jc(_$hash, accountAggregationSources.hashCode);
    _$hash = $jc(_$hash, organizationAggregationSource.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, lastUpdatedTime.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigurationAggregatorBuilder
    implements
        Builder<ConfigurationAggregator, ConfigurationAggregatorBuilder> {
  _$ConfigurationAggregator? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  String? _configurationAggregatorArn;
  String? get configurationAggregatorArn => _$this._configurationAggregatorArn;
  set configurationAggregatorArn(String? configurationAggregatorArn) =>
      _$this._configurationAggregatorArn = configurationAggregatorArn;

  _i4.ListBuilder<_i2.AccountAggregationSource>? _accountAggregationSources;
  _i4.ListBuilder<_i2.AccountAggregationSource> get accountAggregationSources =>
      _$this._accountAggregationSources ??=
          new _i4.ListBuilder<_i2.AccountAggregationSource>();
  set accountAggregationSources(
          _i4.ListBuilder<_i2.AccountAggregationSource>?
              accountAggregationSources) =>
      _$this._accountAggregationSources = accountAggregationSources;

  _i3.OrganizationAggregationSourceBuilder? _organizationAggregationSource;
  _i3.OrganizationAggregationSourceBuilder get organizationAggregationSource =>
      _$this._organizationAggregationSource ??=
          new _i3.OrganizationAggregationSourceBuilder();
  set organizationAggregationSource(
          _i3.OrganizationAggregationSourceBuilder?
              organizationAggregationSource) =>
      _$this._organizationAggregationSource = organizationAggregationSource;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  DateTime? _lastUpdatedTime;
  DateTime? get lastUpdatedTime => _$this._lastUpdatedTime;
  set lastUpdatedTime(DateTime? lastUpdatedTime) =>
      _$this._lastUpdatedTime = lastUpdatedTime;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  ConfigurationAggregatorBuilder() {
    ConfigurationAggregator._init(this);
  }

  ConfigurationAggregatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _configurationAggregatorArn = $v.configurationAggregatorArn;
      _accountAggregationSources = $v.accountAggregationSources?.toBuilder();
      _organizationAggregationSource =
          $v.organizationAggregationSource?.toBuilder();
      _creationTime = $v.creationTime;
      _lastUpdatedTime = $v.lastUpdatedTime;
      _createdBy = $v.createdBy;
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
              configurationAggregatorName: configurationAggregatorName,
              configurationAggregatorArn: configurationAggregatorArn,
              accountAggregationSources: _accountAggregationSources?.build(),
              organizationAggregationSource:
                  _organizationAggregationSource?.build(),
              creationTime: creationTime,
              lastUpdatedTime: lastUpdatedTime,
              createdBy: createdBy);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
