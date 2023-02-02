// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.retention_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetentionConfiguration extends RetentionConfiguration {
  @override
  final String name;
  @override
  final int retentionPeriodInDays;

  factory _$RetentionConfiguration(
          [void Function(RetentionConfigurationBuilder)? updates]) =>
      (new RetentionConfigurationBuilder()..update(updates))._build();

  _$RetentionConfiguration._(
      {required this.name, required this.retentionPeriodInDays})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'RetentionConfiguration', 'name');
    BuiltValueNullFieldError.checkNotNull(retentionPeriodInDays,
        r'RetentionConfiguration', 'retentionPeriodInDays');
  }

  @override
  RetentionConfiguration rebuild(
          void Function(RetentionConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RetentionConfigurationBuilder toBuilder() =>
      new RetentionConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetentionConfiguration &&
        name == other.name &&
        retentionPeriodInDays == other.retentionPeriodInDays;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, retentionPeriodInDays.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RetentionConfigurationBuilder
    implements Builder<RetentionConfiguration, RetentionConfigurationBuilder> {
  _$RetentionConfiguration? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _retentionPeriodInDays;
  int? get retentionPeriodInDays => _$this._retentionPeriodInDays;
  set retentionPeriodInDays(int? retentionPeriodInDays) =>
      _$this._retentionPeriodInDays = retentionPeriodInDays;

  RetentionConfigurationBuilder() {
    RetentionConfiguration._init(this);
  }

  RetentionConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _retentionPeriodInDays = $v.retentionPeriodInDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetentionConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RetentionConfiguration;
  }

  @override
  void update(void Function(RetentionConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetentionConfiguration build() => _build();

  _$RetentionConfiguration _build() {
    final _$result = _$v ??
        new _$RetentionConfiguration._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'RetentionConfiguration', 'name'),
            retentionPeriodInDays: BuiltValueNullFieldError.checkNotNull(
                retentionPeriodInDays,
                r'RetentionConfiguration',
                'retentionPeriodInDays'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
