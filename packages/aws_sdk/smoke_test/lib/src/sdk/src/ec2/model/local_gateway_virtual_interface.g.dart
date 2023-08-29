// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_gateway_virtual_interface.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalGatewayVirtualInterface extends LocalGatewayVirtualInterface {
  @override
  final String? localGatewayVirtualInterfaceId;
  @override
  final String? localGatewayId;
  @override
  final int vlan;
  @override
  final String? localAddress;
  @override
  final String? peerAddress;
  @override
  final int localBgpAsn;
  @override
  final int peerBgpAsn;
  @override
  final String? ownerId;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$LocalGatewayVirtualInterface(
          [void Function(LocalGatewayVirtualInterfaceBuilder)? updates]) =>
      (new LocalGatewayVirtualInterfaceBuilder()..update(updates))._build();

  _$LocalGatewayVirtualInterface._(
      {this.localGatewayVirtualInterfaceId,
      this.localGatewayId,
      required this.vlan,
      this.localAddress,
      this.peerAddress,
      required this.localBgpAsn,
      required this.peerBgpAsn,
      this.ownerId,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vlan, r'LocalGatewayVirtualInterface', 'vlan');
    BuiltValueNullFieldError.checkNotNull(
        localBgpAsn, r'LocalGatewayVirtualInterface', 'localBgpAsn');
    BuiltValueNullFieldError.checkNotNull(
        peerBgpAsn, r'LocalGatewayVirtualInterface', 'peerBgpAsn');
  }

  @override
  LocalGatewayVirtualInterface rebuild(
          void Function(LocalGatewayVirtualInterfaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalGatewayVirtualInterfaceBuilder toBuilder() =>
      new LocalGatewayVirtualInterfaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalGatewayVirtualInterface &&
        localGatewayVirtualInterfaceId ==
            other.localGatewayVirtualInterfaceId &&
        localGatewayId == other.localGatewayId &&
        vlan == other.vlan &&
        localAddress == other.localAddress &&
        peerAddress == other.peerAddress &&
        localBgpAsn == other.localBgpAsn &&
        peerBgpAsn == other.peerBgpAsn &&
        ownerId == other.ownerId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayVirtualInterfaceId.hashCode);
    _$hash = $jc(_$hash, localGatewayId.hashCode);
    _$hash = $jc(_$hash, vlan.hashCode);
    _$hash = $jc(_$hash, localAddress.hashCode);
    _$hash = $jc(_$hash, peerAddress.hashCode);
    _$hash = $jc(_$hash, localBgpAsn.hashCode);
    _$hash = $jc(_$hash, peerBgpAsn.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LocalGatewayVirtualInterfaceBuilder
    implements
        Builder<LocalGatewayVirtualInterface,
            LocalGatewayVirtualInterfaceBuilder> {
  _$LocalGatewayVirtualInterface? _$v;

  String? _localGatewayVirtualInterfaceId;
  String? get localGatewayVirtualInterfaceId =>
      _$this._localGatewayVirtualInterfaceId;
  set localGatewayVirtualInterfaceId(String? localGatewayVirtualInterfaceId) =>
      _$this._localGatewayVirtualInterfaceId = localGatewayVirtualInterfaceId;

  String? _localGatewayId;
  String? get localGatewayId => _$this._localGatewayId;
  set localGatewayId(String? localGatewayId) =>
      _$this._localGatewayId = localGatewayId;

  int? _vlan;
  int? get vlan => _$this._vlan;
  set vlan(int? vlan) => _$this._vlan = vlan;

  String? _localAddress;
  String? get localAddress => _$this._localAddress;
  set localAddress(String? localAddress) => _$this._localAddress = localAddress;

  String? _peerAddress;
  String? get peerAddress => _$this._peerAddress;
  set peerAddress(String? peerAddress) => _$this._peerAddress = peerAddress;

  int? _localBgpAsn;
  int? get localBgpAsn => _$this._localBgpAsn;
  set localBgpAsn(int? localBgpAsn) => _$this._localBgpAsn = localBgpAsn;

  int? _peerBgpAsn;
  int? get peerBgpAsn => _$this._peerBgpAsn;
  set peerBgpAsn(int? peerBgpAsn) => _$this._peerBgpAsn = peerBgpAsn;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  LocalGatewayVirtualInterfaceBuilder() {
    LocalGatewayVirtualInterface._init(this);
  }

  LocalGatewayVirtualInterfaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayVirtualInterfaceId = $v.localGatewayVirtualInterfaceId;
      _localGatewayId = $v.localGatewayId;
      _vlan = $v.vlan;
      _localAddress = $v.localAddress;
      _peerAddress = $v.peerAddress;
      _localBgpAsn = $v.localBgpAsn;
      _peerBgpAsn = $v.peerBgpAsn;
      _ownerId = $v.ownerId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalGatewayVirtualInterface other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalGatewayVirtualInterface;
  }

  @override
  void update(void Function(LocalGatewayVirtualInterfaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalGatewayVirtualInterface build() => _build();

  _$LocalGatewayVirtualInterface _build() {
    _$LocalGatewayVirtualInterface _$result;
    try {
      _$result = _$v ??
          new _$LocalGatewayVirtualInterface._(
              localGatewayVirtualInterfaceId: localGatewayVirtualInterfaceId,
              localGatewayId: localGatewayId,
              vlan: BuiltValueNullFieldError.checkNotNull(
                  vlan, r'LocalGatewayVirtualInterface', 'vlan'),
              localAddress: localAddress,
              peerAddress: peerAddress,
              localBgpAsn: BuiltValueNullFieldError.checkNotNull(
                  localBgpAsn, r'LocalGatewayVirtualInterface', 'localBgpAsn'),
              peerBgpAsn: BuiltValueNullFieldError.checkNotNull(
                  peerBgpAsn, r'LocalGatewayVirtualInterface', 'peerBgpAsn'),
              ownerId: ownerId,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocalGatewayVirtualInterface', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
