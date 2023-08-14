// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_nat_gateway_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateNatGatewayAddressRequest
    extends DisassociateNatGatewayAddressRequest {
  @override
  final String? natGatewayId;
  @override
  final _i3.BuiltList<String>? associationIds;
  @override
  final int maxDrainDurationSeconds;
  @override
  final bool dryRun;

  factory _$DisassociateNatGatewayAddressRequest(
          [void Function(DisassociateNatGatewayAddressRequestBuilder)?
              updates]) =>
      (new DisassociateNatGatewayAddressRequestBuilder()..update(updates))
          ._build();

  _$DisassociateNatGatewayAddressRequest._(
      {this.natGatewayId,
      this.associationIds,
      required this.maxDrainDurationSeconds,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxDrainDurationSeconds,
        r'DisassociateNatGatewayAddressRequest', 'maxDrainDurationSeconds');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateNatGatewayAddressRequest', 'dryRun');
  }

  @override
  DisassociateNatGatewayAddressRequest rebuild(
          void Function(DisassociateNatGatewayAddressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateNatGatewayAddressRequestBuilder toBuilder() =>
      new DisassociateNatGatewayAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateNatGatewayAddressRequest &&
        natGatewayId == other.natGatewayId &&
        associationIds == other.associationIds &&
        maxDrainDurationSeconds == other.maxDrainDurationSeconds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, natGatewayId.hashCode);
    _$hash = $jc(_$hash, associationIds.hashCode);
    _$hash = $jc(_$hash, maxDrainDurationSeconds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateNatGatewayAddressRequestBuilder
    implements
        Builder<DisassociateNatGatewayAddressRequest,
            DisassociateNatGatewayAddressRequestBuilder> {
  _$DisassociateNatGatewayAddressRequest? _$v;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  _i3.ListBuilder<String>? _associationIds;
  _i3.ListBuilder<String> get associationIds =>
      _$this._associationIds ??= new _i3.ListBuilder<String>();
  set associationIds(_i3.ListBuilder<String>? associationIds) =>
      _$this._associationIds = associationIds;

  int? _maxDrainDurationSeconds;
  int? get maxDrainDurationSeconds => _$this._maxDrainDurationSeconds;
  set maxDrainDurationSeconds(int? maxDrainDurationSeconds) =>
      _$this._maxDrainDurationSeconds = maxDrainDurationSeconds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisassociateNatGatewayAddressRequestBuilder() {
    DisassociateNatGatewayAddressRequest._init(this);
  }

  DisassociateNatGatewayAddressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _natGatewayId = $v.natGatewayId;
      _associationIds = $v.associationIds?.toBuilder();
      _maxDrainDurationSeconds = $v.maxDrainDurationSeconds;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateNatGatewayAddressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateNatGatewayAddressRequest;
  }

  @override
  void update(
      void Function(DisassociateNatGatewayAddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateNatGatewayAddressRequest build() => _build();

  _$DisassociateNatGatewayAddressRequest _build() {
    _$DisassociateNatGatewayAddressRequest _$result;
    try {
      _$result = _$v ??
          new _$DisassociateNatGatewayAddressRequest._(
              natGatewayId: natGatewayId,
              associationIds: _associationIds?.build(),
              maxDrainDurationSeconds: BuiltValueNullFieldError.checkNotNull(
                  maxDrainDurationSeconds,
                  r'DisassociateNatGatewayAddressRequest',
                  'maxDrainDurationSeconds'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DisassociateNatGatewayAddressRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associationIds';
        _associationIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateNatGatewayAddressRequest',
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
