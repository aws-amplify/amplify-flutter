// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_private_nat_gateway_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssignPrivateNatGatewayAddressRequest
    extends AssignPrivateNatGatewayAddressRequest {
  @override
  final String? natGatewayId;
  @override
  final _i3.BuiltList<String>? privateIpAddresses;
  @override
  final int privateIpAddressCount;
  @override
  final bool dryRun;

  factory _$AssignPrivateNatGatewayAddressRequest(
          [void Function(AssignPrivateNatGatewayAddressRequestBuilder)?
              updates]) =>
      (new AssignPrivateNatGatewayAddressRequestBuilder()..update(updates))
          ._build();

  _$AssignPrivateNatGatewayAddressRequest._(
      {this.natGatewayId,
      this.privateIpAddresses,
      required this.privateIpAddressCount,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(privateIpAddressCount,
        r'AssignPrivateNatGatewayAddressRequest', 'privateIpAddressCount');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssignPrivateNatGatewayAddressRequest', 'dryRun');
  }

  @override
  AssignPrivateNatGatewayAddressRequest rebuild(
          void Function(AssignPrivateNatGatewayAddressRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssignPrivateNatGatewayAddressRequestBuilder toBuilder() =>
      new AssignPrivateNatGatewayAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssignPrivateNatGatewayAddressRequest &&
        natGatewayId == other.natGatewayId &&
        privateIpAddresses == other.privateIpAddresses &&
        privateIpAddressCount == other.privateIpAddressCount &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, natGatewayId.hashCode);
    _$hash = $jc(_$hash, privateIpAddresses.hashCode);
    _$hash = $jc(_$hash, privateIpAddressCount.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssignPrivateNatGatewayAddressRequestBuilder
    implements
        Builder<AssignPrivateNatGatewayAddressRequest,
            AssignPrivateNatGatewayAddressRequestBuilder> {
  _$AssignPrivateNatGatewayAddressRequest? _$v;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  _i3.ListBuilder<String>? _privateIpAddresses;
  _i3.ListBuilder<String> get privateIpAddresses =>
      _$this._privateIpAddresses ??= new _i3.ListBuilder<String>();
  set privateIpAddresses(_i3.ListBuilder<String>? privateIpAddresses) =>
      _$this._privateIpAddresses = privateIpAddresses;

  int? _privateIpAddressCount;
  int? get privateIpAddressCount => _$this._privateIpAddressCount;
  set privateIpAddressCount(int? privateIpAddressCount) =>
      _$this._privateIpAddressCount = privateIpAddressCount;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AssignPrivateNatGatewayAddressRequestBuilder() {
    AssignPrivateNatGatewayAddressRequest._init(this);
  }

  AssignPrivateNatGatewayAddressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _natGatewayId = $v.natGatewayId;
      _privateIpAddresses = $v.privateIpAddresses?.toBuilder();
      _privateIpAddressCount = $v.privateIpAddressCount;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssignPrivateNatGatewayAddressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssignPrivateNatGatewayAddressRequest;
  }

  @override
  void update(
      void Function(AssignPrivateNatGatewayAddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssignPrivateNatGatewayAddressRequest build() => _build();

  _$AssignPrivateNatGatewayAddressRequest _build() {
    _$AssignPrivateNatGatewayAddressRequest _$result;
    try {
      _$result = _$v ??
          new _$AssignPrivateNatGatewayAddressRequest._(
              natGatewayId: natGatewayId,
              privateIpAddresses: _privateIpAddresses?.build(),
              privateIpAddressCount: BuiltValueNullFieldError.checkNotNull(
                  privateIpAddressCount,
                  r'AssignPrivateNatGatewayAddressRequest',
                  'privateIpAddressCount'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AssignPrivateNatGatewayAddressRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'privateIpAddresses';
        _privateIpAddresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssignPrivateNatGatewayAddressRequest',
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
