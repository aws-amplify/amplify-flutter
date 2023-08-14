// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_ipam_resource_discovery_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateIpamResourceDiscoveryRequest
    extends AssociateIpamResourceDiscoveryRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamId;
  @override
  final String? ipamResourceDiscoveryId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? clientToken;

  factory _$AssociateIpamResourceDiscoveryRequest(
          [void Function(AssociateIpamResourceDiscoveryRequestBuilder)?
              updates]) =>
      (new AssociateIpamResourceDiscoveryRequestBuilder()..update(updates))
          ._build();

  _$AssociateIpamResourceDiscoveryRequest._(
      {required this.dryRun,
      this.ipamId,
      this.ipamResourceDiscoveryId,
      this.tagSpecifications,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssociateIpamResourceDiscoveryRequest', 'dryRun');
  }

  @override
  AssociateIpamResourceDiscoveryRequest rebuild(
          void Function(AssociateIpamResourceDiscoveryRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateIpamResourceDiscoveryRequestBuilder toBuilder() =>
      new AssociateIpamResourceDiscoveryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateIpamResourceDiscoveryRequest &&
        dryRun == other.dryRun &&
        ipamId == other.ipamId &&
        ipamResourceDiscoveryId == other.ipamResourceDiscoveryId &&
        tagSpecifications == other.tagSpecifications &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamId.hashCode);
    _$hash = $jc(_$hash, ipamResourceDiscoveryId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateIpamResourceDiscoveryRequestBuilder
    implements
        Builder<AssociateIpamResourceDiscoveryRequest,
            AssociateIpamResourceDiscoveryRequestBuilder> {
  _$AssociateIpamResourceDiscoveryRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamId;
  String? get ipamId => _$this._ipamId;
  set ipamId(String? ipamId) => _$this._ipamId = ipamId;

  String? _ipamResourceDiscoveryId;
  String? get ipamResourceDiscoveryId => _$this._ipamResourceDiscoveryId;
  set ipamResourceDiscoveryId(String? ipamResourceDiscoveryId) =>
      _$this._ipamResourceDiscoveryId = ipamResourceDiscoveryId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  AssociateIpamResourceDiscoveryRequestBuilder() {
    AssociateIpamResourceDiscoveryRequest._init(this);
  }

  AssociateIpamResourceDiscoveryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamId = $v.ipamId;
      _ipamResourceDiscoveryId = $v.ipamResourceDiscoveryId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateIpamResourceDiscoveryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateIpamResourceDiscoveryRequest;
  }

  @override
  void update(
      void Function(AssociateIpamResourceDiscoveryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateIpamResourceDiscoveryRequest build() => _build();

  _$AssociateIpamResourceDiscoveryRequest _build() {
    _$AssociateIpamResourceDiscoveryRequest _$result;
    try {
      _$result = _$v ??
          new _$AssociateIpamResourceDiscoveryRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AssociateIpamResourceDiscoveryRequest', 'dryRun'),
              ipamId: ipamId,
              ipamResourceDiscoveryId: ipamResourceDiscoveryId,
              tagSpecifications: _tagSpecifications?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateIpamResourceDiscoveryRequest',
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
