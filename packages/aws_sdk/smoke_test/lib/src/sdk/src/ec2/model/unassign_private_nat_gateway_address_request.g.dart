// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unassign_private_nat_gateway_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnassignPrivateNatGatewayAddressRequest
    extends UnassignPrivateNatGatewayAddressRequest {
  @override
  final String? natGatewayId;
  @override
  final _i3.BuiltList<String>? privateIpAddresses;
  @override
  final int maxDrainDurationSeconds;
  @override
  final bool dryRun;

  factory _$UnassignPrivateNatGatewayAddressRequest(
          [void Function(UnassignPrivateNatGatewayAddressRequestBuilder)?
              updates]) =>
      (new UnassignPrivateNatGatewayAddressRequestBuilder()..update(updates))
          ._build();

  _$UnassignPrivateNatGatewayAddressRequest._(
      {this.natGatewayId,
      this.privateIpAddresses,
      required this.maxDrainDurationSeconds,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxDrainDurationSeconds,
        r'UnassignPrivateNatGatewayAddressRequest', 'maxDrainDurationSeconds');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'UnassignPrivateNatGatewayAddressRequest', 'dryRun');
  }

  @override
  UnassignPrivateNatGatewayAddressRequest rebuild(
          void Function(UnassignPrivateNatGatewayAddressRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnassignPrivateNatGatewayAddressRequestBuilder toBuilder() =>
      new UnassignPrivateNatGatewayAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnassignPrivateNatGatewayAddressRequest &&
        natGatewayId == other.natGatewayId &&
        privateIpAddresses == other.privateIpAddresses &&
        maxDrainDurationSeconds == other.maxDrainDurationSeconds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, natGatewayId.hashCode);
    _$hash = $jc(_$hash, privateIpAddresses.hashCode);
    _$hash = $jc(_$hash, maxDrainDurationSeconds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnassignPrivateNatGatewayAddressRequestBuilder
    implements
        Builder<UnassignPrivateNatGatewayAddressRequest,
            UnassignPrivateNatGatewayAddressRequestBuilder> {
  _$UnassignPrivateNatGatewayAddressRequest? _$v;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  _i3.ListBuilder<String>? _privateIpAddresses;
  _i3.ListBuilder<String> get privateIpAddresses =>
      _$this._privateIpAddresses ??= new _i3.ListBuilder<String>();
  set privateIpAddresses(_i3.ListBuilder<String>? privateIpAddresses) =>
      _$this._privateIpAddresses = privateIpAddresses;

  int? _maxDrainDurationSeconds;
  int? get maxDrainDurationSeconds => _$this._maxDrainDurationSeconds;
  set maxDrainDurationSeconds(int? maxDrainDurationSeconds) =>
      _$this._maxDrainDurationSeconds = maxDrainDurationSeconds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  UnassignPrivateNatGatewayAddressRequestBuilder() {
    UnassignPrivateNatGatewayAddressRequest._init(this);
  }

  UnassignPrivateNatGatewayAddressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _natGatewayId = $v.natGatewayId;
      _privateIpAddresses = $v.privateIpAddresses?.toBuilder();
      _maxDrainDurationSeconds = $v.maxDrainDurationSeconds;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnassignPrivateNatGatewayAddressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnassignPrivateNatGatewayAddressRequest;
  }

  @override
  void update(
      void Function(UnassignPrivateNatGatewayAddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnassignPrivateNatGatewayAddressRequest build() => _build();

  _$UnassignPrivateNatGatewayAddressRequest _build() {
    _$UnassignPrivateNatGatewayAddressRequest _$result;
    try {
      _$result = _$v ??
          new _$UnassignPrivateNatGatewayAddressRequest._(
              natGatewayId: natGatewayId,
              privateIpAddresses: _privateIpAddresses?.build(),
              maxDrainDurationSeconds: BuiltValueNullFieldError.checkNotNull(
                  maxDrainDurationSeconds,
                  r'UnassignPrivateNatGatewayAddressRequest',
                  'maxDrainDurationSeconds'),
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'UnassignPrivateNatGatewayAddressRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'privateIpAddresses';
        _privateIpAddresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnassignPrivateNatGatewayAddressRequest',
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
