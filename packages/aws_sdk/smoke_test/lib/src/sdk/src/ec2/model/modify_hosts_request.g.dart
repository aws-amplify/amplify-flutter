// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_hosts_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyHostsRequest extends ModifyHostsRequest {
  @override
  final AutoPlacement? autoPlacement;
  @override
  final _i3.BuiltList<String>? hostIds;
  @override
  final HostRecovery? hostRecovery;
  @override
  final String? instanceType;
  @override
  final String? instanceFamily;
  @override
  final HostMaintenance? hostMaintenance;

  factory _$ModifyHostsRequest(
          [void Function(ModifyHostsRequestBuilder)? updates]) =>
      (new ModifyHostsRequestBuilder()..update(updates))._build();

  _$ModifyHostsRequest._(
      {this.autoPlacement,
      this.hostIds,
      this.hostRecovery,
      this.instanceType,
      this.instanceFamily,
      this.hostMaintenance})
      : super._();

  @override
  ModifyHostsRequest rebuild(
          void Function(ModifyHostsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyHostsRequestBuilder toBuilder() =>
      new ModifyHostsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyHostsRequest &&
        autoPlacement == other.autoPlacement &&
        hostIds == other.hostIds &&
        hostRecovery == other.hostRecovery &&
        instanceType == other.instanceType &&
        instanceFamily == other.instanceFamily &&
        hostMaintenance == other.hostMaintenance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, autoPlacement.hashCode);
    _$hash = $jc(_$hash, hostIds.hashCode);
    _$hash = $jc(_$hash, hostRecovery.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, instanceFamily.hashCode);
    _$hash = $jc(_$hash, hostMaintenance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyHostsRequestBuilder
    implements Builder<ModifyHostsRequest, ModifyHostsRequestBuilder> {
  _$ModifyHostsRequest? _$v;

  AutoPlacement? _autoPlacement;
  AutoPlacement? get autoPlacement => _$this._autoPlacement;
  set autoPlacement(AutoPlacement? autoPlacement) =>
      _$this._autoPlacement = autoPlacement;

  _i3.ListBuilder<String>? _hostIds;
  _i3.ListBuilder<String> get hostIds =>
      _$this._hostIds ??= new _i3.ListBuilder<String>();
  set hostIds(_i3.ListBuilder<String>? hostIds) => _$this._hostIds = hostIds;

  HostRecovery? _hostRecovery;
  HostRecovery? get hostRecovery => _$this._hostRecovery;
  set hostRecovery(HostRecovery? hostRecovery) =>
      _$this._hostRecovery = hostRecovery;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  String? _instanceFamily;
  String? get instanceFamily => _$this._instanceFamily;
  set instanceFamily(String? instanceFamily) =>
      _$this._instanceFamily = instanceFamily;

  HostMaintenance? _hostMaintenance;
  HostMaintenance? get hostMaintenance => _$this._hostMaintenance;
  set hostMaintenance(HostMaintenance? hostMaintenance) =>
      _$this._hostMaintenance = hostMaintenance;

  ModifyHostsRequestBuilder();

  ModifyHostsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoPlacement = $v.autoPlacement;
      _hostIds = $v.hostIds?.toBuilder();
      _hostRecovery = $v.hostRecovery;
      _instanceType = $v.instanceType;
      _instanceFamily = $v.instanceFamily;
      _hostMaintenance = $v.hostMaintenance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyHostsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyHostsRequest;
  }

  @override
  void update(void Function(ModifyHostsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyHostsRequest build() => _build();

  _$ModifyHostsRequest _build() {
    _$ModifyHostsRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyHostsRequest._(
              autoPlacement: autoPlacement,
              hostIds: _hostIds?.build(),
              hostRecovery: hostRecovery,
              instanceType: instanceType,
              instanceFamily: instanceFamily,
              hostMaintenance: hostMaintenance);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hostIds';
        _hostIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyHostsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
