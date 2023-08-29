// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocate_ipam_pool_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllocateIpamPoolCidrRequest extends AllocateIpamPoolCidrRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamPoolId;
  @override
  final String? cidr;
  @override
  final int netmaskLength;
  @override
  final String? clientToken;
  @override
  final String? description;
  @override
  final bool previewNextCidr;
  @override
  final _i3.BuiltList<String>? disallowedCidrs;

  factory _$AllocateIpamPoolCidrRequest(
          [void Function(AllocateIpamPoolCidrRequestBuilder)? updates]) =>
      (new AllocateIpamPoolCidrRequestBuilder()..update(updates))._build();

  _$AllocateIpamPoolCidrRequest._(
      {required this.dryRun,
      this.ipamPoolId,
      this.cidr,
      required this.netmaskLength,
      this.clientToken,
      this.description,
      required this.previewNextCidr,
      this.disallowedCidrs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AllocateIpamPoolCidrRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        netmaskLength, r'AllocateIpamPoolCidrRequest', 'netmaskLength');
    BuiltValueNullFieldError.checkNotNull(
        previewNextCidr, r'AllocateIpamPoolCidrRequest', 'previewNextCidr');
  }

  @override
  AllocateIpamPoolCidrRequest rebuild(
          void Function(AllocateIpamPoolCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllocateIpamPoolCidrRequestBuilder toBuilder() =>
      new AllocateIpamPoolCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllocateIpamPoolCidrRequest &&
        dryRun == other.dryRun &&
        ipamPoolId == other.ipamPoolId &&
        cidr == other.cidr &&
        netmaskLength == other.netmaskLength &&
        clientToken == other.clientToken &&
        description == other.description &&
        previewNextCidr == other.previewNextCidr &&
        disallowedCidrs == other.disallowedCidrs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, netmaskLength.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, previewNextCidr.hashCode);
    _$hash = $jc(_$hash, disallowedCidrs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AllocateIpamPoolCidrRequestBuilder
    implements
        Builder<AllocateIpamPoolCidrRequest,
            AllocateIpamPoolCidrRequestBuilder> {
  _$AllocateIpamPoolCidrRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  int? _netmaskLength;
  int? get netmaskLength => _$this._netmaskLength;
  set netmaskLength(int? netmaskLength) =>
      _$this._netmaskLength = netmaskLength;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _previewNextCidr;
  bool? get previewNextCidr => _$this._previewNextCidr;
  set previewNextCidr(bool? previewNextCidr) =>
      _$this._previewNextCidr = previewNextCidr;

  _i3.ListBuilder<String>? _disallowedCidrs;
  _i3.ListBuilder<String> get disallowedCidrs =>
      _$this._disallowedCidrs ??= new _i3.ListBuilder<String>();
  set disallowedCidrs(_i3.ListBuilder<String>? disallowedCidrs) =>
      _$this._disallowedCidrs = disallowedCidrs;

  AllocateIpamPoolCidrRequestBuilder() {
    AllocateIpamPoolCidrRequest._init(this);
  }

  AllocateIpamPoolCidrRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamPoolId = $v.ipamPoolId;
      _cidr = $v.cidr;
      _netmaskLength = $v.netmaskLength;
      _clientToken = $v.clientToken;
      _description = $v.description;
      _previewNextCidr = $v.previewNextCidr;
      _disallowedCidrs = $v.disallowedCidrs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllocateIpamPoolCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllocateIpamPoolCidrRequest;
  }

  @override
  void update(void Function(AllocateIpamPoolCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllocateIpamPoolCidrRequest build() => _build();

  _$AllocateIpamPoolCidrRequest _build() {
    _$AllocateIpamPoolCidrRequest _$result;
    try {
      _$result = _$v ??
          new _$AllocateIpamPoolCidrRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AllocateIpamPoolCidrRequest', 'dryRun'),
              ipamPoolId: ipamPoolId,
              cidr: cidr,
              netmaskLength: BuiltValueNullFieldError.checkNotNull(
                  netmaskLength,
                  r'AllocateIpamPoolCidrRequest',
                  'netmaskLength'),
              clientToken: clientToken,
              description: description,
              previewNextCidr: BuiltValueNullFieldError.checkNotNull(
                  previewNextCidr,
                  r'AllocateIpamPoolCidrRequest',
                  'previewNextCidr'),
              disallowedCidrs: _disallowedCidrs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disallowedCidrs';
        _disallowedCidrs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AllocateIpamPoolCidrRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
