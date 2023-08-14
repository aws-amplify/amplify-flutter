// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_ipam_resource_discovery_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIpamResourceDiscoveryRequest
    extends ModifyIpamResourceDiscoveryRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamResourceDiscoveryId;
  @override
  final String? description;
  @override
  final _i3.BuiltList<AddIpamOperatingRegion>? addOperatingRegions;
  @override
  final _i3.BuiltList<RemoveIpamOperatingRegion>? removeOperatingRegions;

  factory _$ModifyIpamResourceDiscoveryRequest(
          [void Function(ModifyIpamResourceDiscoveryRequestBuilder)?
              updates]) =>
      (new ModifyIpamResourceDiscoveryRequestBuilder()..update(updates))
          ._build();

  _$ModifyIpamResourceDiscoveryRequest._(
      {required this.dryRun,
      this.ipamResourceDiscoveryId,
      this.description,
      this.addOperatingRegions,
      this.removeOperatingRegions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyIpamResourceDiscoveryRequest', 'dryRun');
  }

  @override
  ModifyIpamResourceDiscoveryRequest rebuild(
          void Function(ModifyIpamResourceDiscoveryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIpamResourceDiscoveryRequestBuilder toBuilder() =>
      new ModifyIpamResourceDiscoveryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIpamResourceDiscoveryRequest &&
        dryRun == other.dryRun &&
        ipamResourceDiscoveryId == other.ipamResourceDiscoveryId &&
        description == other.description &&
        addOperatingRegions == other.addOperatingRegions &&
        removeOperatingRegions == other.removeOperatingRegions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, addOperatingRegions.hashCode);
    _$hash = $jc(_$hash, removeOperatingRegions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIpamResourceDiscoveryRequestBuilder
    implements
        Builder<ModifyIpamResourceDiscoveryRequest,
            ModifyIpamResourceDiscoveryRequestBuilder> {
  _$ModifyIpamResourceDiscoveryRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamResourceDiscoveryId;
  String? get ipamResourceDiscoveryId => _$this._ipamResourceDiscoveryId;
  set ipamResourceDiscoveryId(String? ipamResourceDiscoveryId) =>
      _$this._ipamResourceDiscoveryId = ipamResourceDiscoveryId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<AddIpamOperatingRegion>? _addOperatingRegions;
  _i3.ListBuilder<AddIpamOperatingRegion> get addOperatingRegions =>
      _$this._addOperatingRegions ??=
          new _i3.ListBuilder<AddIpamOperatingRegion>();
  set addOperatingRegions(
          _i3.ListBuilder<AddIpamOperatingRegion>? addOperatingRegions) =>
      _$this._addOperatingRegions = addOperatingRegions;

  _i3.ListBuilder<RemoveIpamOperatingRegion>? _removeOperatingRegions;
  _i3.ListBuilder<RemoveIpamOperatingRegion> get removeOperatingRegions =>
      _$this._removeOperatingRegions ??=
          new _i3.ListBuilder<RemoveIpamOperatingRegion>();
  set removeOperatingRegions(
          _i3.ListBuilder<RemoveIpamOperatingRegion>? removeOperatingRegions) =>
      _$this._removeOperatingRegions = removeOperatingRegions;

  ModifyIpamResourceDiscoveryRequestBuilder() {
    ModifyIpamResourceDiscoveryRequest._init(this);
  }

  ModifyIpamResourceDiscoveryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamResourceDiscoveryId = $v.ipamResourceDiscoveryId;
      _description = $v.description;
      _addOperatingRegions = $v.addOperatingRegions?.toBuilder();
      _removeOperatingRegions = $v.removeOperatingRegions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIpamResourceDiscoveryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIpamResourceDiscoveryRequest;
  }

  @override
  void update(
      void Function(ModifyIpamResourceDiscoveryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIpamResourceDiscoveryRequest build() => _build();

  _$ModifyIpamResourceDiscoveryRequest _build() {
    _$ModifyIpamResourceDiscoveryRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyIpamResourceDiscoveryRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyIpamResourceDiscoveryRequest', 'dryRun'),
              ipamResourceDiscoveryId: ipamResourceDiscoveryId,
              description: description,
              addOperatingRegions: _addOperatingRegions?.build(),
              removeOperatingRegions: _removeOperatingRegions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addOperatingRegions';
        _addOperatingRegions?.build();
        _$failedField = 'removeOperatingRegions';
        _removeOperatingRegions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyIpamResourceDiscoveryRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
