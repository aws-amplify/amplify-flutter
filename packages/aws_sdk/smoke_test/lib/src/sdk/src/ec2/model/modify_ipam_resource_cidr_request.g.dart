// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_ipam_resource_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIpamResourceCidrRequest extends ModifyIpamResourceCidrRequest {
  @override
  final bool dryRun;
  @override
  final String? resourceId;
  @override
  final String? resourceCidr;
  @override
  final String? resourceRegion;
  @override
  final String? currentIpamScopeId;
  @override
  final String? destinationIpamScopeId;
  @override
  final bool monitored;

  factory _$ModifyIpamResourceCidrRequest(
          [void Function(ModifyIpamResourceCidrRequestBuilder)? updates]) =>
      (new ModifyIpamResourceCidrRequestBuilder()..update(updates))._build();

  _$ModifyIpamResourceCidrRequest._(
      {required this.dryRun,
      this.resourceId,
      this.resourceCidr,
      this.resourceRegion,
      this.currentIpamScopeId,
      this.destinationIpamScopeId,
      required this.monitored})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyIpamResourceCidrRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        monitored, r'ModifyIpamResourceCidrRequest', 'monitored');
  }

  @override
  ModifyIpamResourceCidrRequest rebuild(
          void Function(ModifyIpamResourceCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIpamResourceCidrRequestBuilder toBuilder() =>
      new ModifyIpamResourceCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIpamResourceCidrRequest &&
        dryRun == other.dryRun &&
        resourceId == other.resourceId &&
        resourceCidr == other.resourceCidr &&
        resourceRegion == other.resourceRegion &&
        currentIpamScopeId == other.currentIpamScopeId &&
        destinationIpamScopeId == other.destinationIpamScopeId &&
        monitored == other.monitored;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceCidr.hashCode);
    _$hash = $jc(_$hash, resourceRegion.hashCode);
    _$hash = $jc(_$hash, currentIpamScopeId.hashCode);
    _$hash = $jc(_$hash, destinationIpamScopeId.hashCode);
    _$hash = $jc(_$hash, monitored.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIpamResourceCidrRequestBuilder
    implements
        Builder<ModifyIpamResourceCidrRequest,
            ModifyIpamResourceCidrRequestBuilder> {
  _$ModifyIpamResourceCidrRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceCidr;
  String? get resourceCidr => _$this._resourceCidr;
  set resourceCidr(String? resourceCidr) => _$this._resourceCidr = resourceCidr;

  String? _resourceRegion;
  String? get resourceRegion => _$this._resourceRegion;
  set resourceRegion(String? resourceRegion) =>
      _$this._resourceRegion = resourceRegion;

  String? _currentIpamScopeId;
  String? get currentIpamScopeId => _$this._currentIpamScopeId;
  set currentIpamScopeId(String? currentIpamScopeId) =>
      _$this._currentIpamScopeId = currentIpamScopeId;

  String? _destinationIpamScopeId;
  String? get destinationIpamScopeId => _$this._destinationIpamScopeId;
  set destinationIpamScopeId(String? destinationIpamScopeId) =>
      _$this._destinationIpamScopeId = destinationIpamScopeId;

  bool? _monitored;
  bool? get monitored => _$this._monitored;
  set monitored(bool? monitored) => _$this._monitored = monitored;

  ModifyIpamResourceCidrRequestBuilder() {
    ModifyIpamResourceCidrRequest._init(this);
  }

  ModifyIpamResourceCidrRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _resourceId = $v.resourceId;
      _resourceCidr = $v.resourceCidr;
      _resourceRegion = $v.resourceRegion;
      _currentIpamScopeId = $v.currentIpamScopeId;
      _destinationIpamScopeId = $v.destinationIpamScopeId;
      _monitored = $v.monitored;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIpamResourceCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIpamResourceCidrRequest;
  }

  @override
  void update(void Function(ModifyIpamResourceCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIpamResourceCidrRequest build() => _build();

  _$ModifyIpamResourceCidrRequest _build() {
    final _$result = _$v ??
        new _$ModifyIpamResourceCidrRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyIpamResourceCidrRequest', 'dryRun'),
            resourceId: resourceId,
            resourceCidr: resourceCidr,
            resourceRegion: resourceRegion,
            currentIpamScopeId: currentIpamScopeId,
            destinationIpamScopeId: destinationIpamScopeId,
            monitored: BuiltValueNullFieldError.checkNotNull(
                monitored, r'ModifyIpamResourceCidrRequest', 'monitored'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
