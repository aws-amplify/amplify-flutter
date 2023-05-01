// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.rollback_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RollbackConfiguration extends RollbackConfiguration {
  @override
  final _i3.BuiltList<_i2.RollbackTrigger>? rollbackTriggers;
  @override
  final int? monitoringTimeInMinutes;

  factory _$RollbackConfiguration(
          [void Function(RollbackConfigurationBuilder)? updates]) =>
      (new RollbackConfigurationBuilder()..update(updates))._build();

  _$RollbackConfiguration._(
      {this.rollbackTriggers, this.monitoringTimeInMinutes})
      : super._();

  @override
  RollbackConfiguration rebuild(
          void Function(RollbackConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RollbackConfigurationBuilder toBuilder() =>
      new RollbackConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RollbackConfiguration &&
        rollbackTriggers == other.rollbackTriggers &&
        monitoringTimeInMinutes == other.monitoringTimeInMinutes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rollbackTriggers.hashCode);
    _$hash = $jc(_$hash, monitoringTimeInMinutes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RollbackConfigurationBuilder
    implements Builder<RollbackConfiguration, RollbackConfigurationBuilder> {
  _$RollbackConfiguration? _$v;

  _i3.ListBuilder<_i2.RollbackTrigger>? _rollbackTriggers;
  _i3.ListBuilder<_i2.RollbackTrigger> get rollbackTriggers =>
      _$this._rollbackTriggers ??= new _i3.ListBuilder<_i2.RollbackTrigger>();
  set rollbackTriggers(
          _i3.ListBuilder<_i2.RollbackTrigger>? rollbackTriggers) =>
      _$this._rollbackTriggers = rollbackTriggers;

  int? _monitoringTimeInMinutes;
  int? get monitoringTimeInMinutes => _$this._monitoringTimeInMinutes;
  set monitoringTimeInMinutes(int? monitoringTimeInMinutes) =>
      _$this._monitoringTimeInMinutes = monitoringTimeInMinutes;

  RollbackConfigurationBuilder() {
    RollbackConfiguration._init(this);
  }

  RollbackConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rollbackTriggers = $v.rollbackTriggers?.toBuilder();
      _monitoringTimeInMinutes = $v.monitoringTimeInMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RollbackConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RollbackConfiguration;
  }

  @override
  void update(void Function(RollbackConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RollbackConfiguration build() => _build();

  _$RollbackConfiguration _build() {
    _$RollbackConfiguration _$result;
    try {
      _$result = _$v ??
          new _$RollbackConfiguration._(
              rollbackTriggers: _rollbackTriggers?.build(),
              monitoringTimeInMinutes: monitoringTimeInMinutes);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rollbackTriggers';
        _rollbackTriggers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RollbackConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
