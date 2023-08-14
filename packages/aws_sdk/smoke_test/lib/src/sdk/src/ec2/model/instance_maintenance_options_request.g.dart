// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_maintenance_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceMaintenanceOptionsRequest
    extends InstanceMaintenanceOptionsRequest {
  @override
  final InstanceAutoRecoveryState? autoRecovery;

  factory _$InstanceMaintenanceOptionsRequest(
          [void Function(InstanceMaintenanceOptionsRequestBuilder)? updates]) =>
      (new InstanceMaintenanceOptionsRequestBuilder()..update(updates))
          ._build();

  _$InstanceMaintenanceOptionsRequest._({this.autoRecovery}) : super._();

  @override
  InstanceMaintenanceOptionsRequest rebuild(
          void Function(InstanceMaintenanceOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceMaintenanceOptionsRequestBuilder toBuilder() =>
      new InstanceMaintenanceOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceMaintenanceOptionsRequest &&
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

class InstanceMaintenanceOptionsRequestBuilder
    implements
        Builder<InstanceMaintenanceOptionsRequest,
            InstanceMaintenanceOptionsRequestBuilder> {
  _$InstanceMaintenanceOptionsRequest? _$v;

  InstanceAutoRecoveryState? _autoRecovery;
  InstanceAutoRecoveryState? get autoRecovery => _$this._autoRecovery;
  set autoRecovery(InstanceAutoRecoveryState? autoRecovery) =>
      _$this._autoRecovery = autoRecovery;

  InstanceMaintenanceOptionsRequestBuilder();

  InstanceMaintenanceOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoRecovery = $v.autoRecovery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceMaintenanceOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceMaintenanceOptionsRequest;
  }

  @override
  void update(
      void Function(InstanceMaintenanceOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceMaintenanceOptionsRequest build() => _build();

  _$InstanceMaintenanceOptionsRequest _build() {
    final _$result = _$v ??
        new _$InstanceMaintenanceOptionsRequest._(autoRecovery: autoRecovery);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
