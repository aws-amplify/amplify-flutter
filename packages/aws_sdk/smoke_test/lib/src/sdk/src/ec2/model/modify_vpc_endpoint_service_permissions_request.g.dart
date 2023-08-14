// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_endpoint_service_permissions_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcEndpointServicePermissionsRequest
    extends ModifyVpcEndpointServicePermissionsRequest {
  @override
  final bool dryRun;
  @override
  final String? serviceId;
  @override
  final _i3.BuiltList<String>? addAllowedPrincipals;
  @override
  final _i3.BuiltList<String>? removeAllowedPrincipals;

  factory _$ModifyVpcEndpointServicePermissionsRequest(
          [void Function(ModifyVpcEndpointServicePermissionsRequestBuilder)?
              updates]) =>
      (new ModifyVpcEndpointServicePermissionsRequestBuilder()..update(updates))
          ._build();

  _$ModifyVpcEndpointServicePermissionsRequest._(
      {required this.dryRun,
      this.serviceId,
      this.addAllowedPrincipals,
      this.removeAllowedPrincipals})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVpcEndpointServicePermissionsRequest', 'dryRun');
  }

  @override
  ModifyVpcEndpointServicePermissionsRequest rebuild(
          void Function(ModifyVpcEndpointServicePermissionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcEndpointServicePermissionsRequestBuilder toBuilder() =>
      new ModifyVpcEndpointServicePermissionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcEndpointServicePermissionsRequest &&
        dryRun == other.dryRun &&
        serviceId == other.serviceId &&
        addAllowedPrincipals == other.addAllowedPrincipals &&
        removeAllowedPrincipals == other.removeAllowedPrincipals;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, addAllowedPrincipals.hashCode);
    _$hash = $jc(_$hash, removeAllowedPrincipals.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcEndpointServicePermissionsRequestBuilder
    implements
        Builder<ModifyVpcEndpointServicePermissionsRequest,
            ModifyVpcEndpointServicePermissionsRequestBuilder> {
  _$ModifyVpcEndpointServicePermissionsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  _i3.ListBuilder<String>? _addAllowedPrincipals;
  _i3.ListBuilder<String> get addAllowedPrincipals =>
      _$this._addAllowedPrincipals ??= new _i3.ListBuilder<String>();
  set addAllowedPrincipals(_i3.ListBuilder<String>? addAllowedPrincipals) =>
      _$this._addAllowedPrincipals = addAllowedPrincipals;

  _i3.ListBuilder<String>? _removeAllowedPrincipals;
  _i3.ListBuilder<String> get removeAllowedPrincipals =>
      _$this._removeAllowedPrincipals ??= new _i3.ListBuilder<String>();
  set removeAllowedPrincipals(
          _i3.ListBuilder<String>? removeAllowedPrincipals) =>
      _$this._removeAllowedPrincipals = removeAllowedPrincipals;

  ModifyVpcEndpointServicePermissionsRequestBuilder() {
    ModifyVpcEndpointServicePermissionsRequest._init(this);
  }

  ModifyVpcEndpointServicePermissionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _serviceId = $v.serviceId;
      _addAllowedPrincipals = $v.addAllowedPrincipals?.toBuilder();
      _removeAllowedPrincipals = $v.removeAllowedPrincipals?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcEndpointServicePermissionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcEndpointServicePermissionsRequest;
  }

  @override
  void update(
      void Function(ModifyVpcEndpointServicePermissionsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcEndpointServicePermissionsRequest build() => _build();

  _$ModifyVpcEndpointServicePermissionsRequest _build() {
    _$ModifyVpcEndpointServicePermissionsRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpcEndpointServicePermissionsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'ModifyVpcEndpointServicePermissionsRequest', 'dryRun'),
              serviceId: serviceId,
              addAllowedPrincipals: _addAllowedPrincipals?.build(),
              removeAllowedPrincipals: _removeAllowedPrincipals?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addAllowedPrincipals';
        _addAllowedPrincipals?.build();
        _$failedField = 'removeAllowedPrincipals';
        _removeAllowedPrincipals?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpcEndpointServicePermissionsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
