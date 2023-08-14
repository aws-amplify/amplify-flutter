// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_maintenance_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceMaintenanceOptions extends InstanceMaintenanceOptions {
  @override
  final InstanceAutoRecoveryState? autoRecovery;

  factory _$InstanceMaintenanceOptions(
          [void Function(InstanceMaintenanceOptionsBuilder)? updates]) =>
      (new InstanceMaintenanceOptionsBuilder()..update(updates))._build();

  _$InstanceMaintenanceOptions._({this.autoRecovery}) : super._();

  @override
  InstanceMaintenanceOptions rebuild(
          void Function(InstanceMaintenanceOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceMaintenanceOptionsBuilder toBuilder() =>
      new InstanceMaintenanceOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceMaintenanceOptions &&
        autoRecovery == other.autoRecovery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, autoRecovery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceMaintenanceOptionsBuilder
    implements
        Builder<InstanceMaintenanceOptions, InstanceMaintenanceOptionsBuilder> {
  _$InstanceMaintenanceOptions? _$v;

  InstanceAutoRecoveryState? _autoRecovery;
  InstanceAutoRecoveryState? get autoRecovery => _$this._autoRecovery;
  set autoRecovery(InstanceAutoRecoveryState? autoRecovery) =>
      _$this._autoRecovery = autoRecovery;

  InstanceMaintenanceOptionsBuilder();

  InstanceMaintenanceOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoRecovery = $v.autoRecovery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceMaintenanceOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceMaintenanceOptions;
  }

  @override
  void update(void Function(InstanceMaintenanceOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceMaintenanceOptions build() => _build();

  _$InstanceMaintenanceOptions _build() {
    final _$result =
        _$v ?? new _$InstanceMaintenanceOptions._(autoRecovery: autoRecovery);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
