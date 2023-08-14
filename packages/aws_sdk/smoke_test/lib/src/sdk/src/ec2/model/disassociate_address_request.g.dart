// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateAddressRequest extends DisassociateAddressRequest {
  @override
  final String? associationId;
  @override
  final String? publicIp;
  @override
  final bool dryRun;

  factory _$DisassociateAddressRequest(
          [void Function(DisassociateAddressRequestBuilder)? updates]) =>
      (new DisassociateAddressRequestBuilder()..update(updates))._build();

  _$DisassociateAddressRequest._(
      {this.associationId, this.publicIp, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateAddressRequest', 'dryRun');
  }

  @override
  DisassociateAddressRequest rebuild(
          void Function(DisassociateAddressRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateAddressRequestBuilder toBuilder() =>
      new DisassociateAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateAddressRequest &&
        associationId == other.associationId &&
        publicIp == other.publicIp &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateAddressRequestBuilder
    implements
        Builder<DisassociateAddressRequest, DisassociateAddressRequestBuilder> {
  _$DisassociateAddressRequest? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisassociateAddressRequestBuilder() {
    DisassociateAddressRequest._init(this);
  }

  DisassociateAddressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _publicIp = $v.publicIp;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateAddressRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateAddressRequest;
  }

  @override
  void update(void Function(DisassociateAddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateAddressRequest build() => _build();

  _$DisassociateAddressRequest _build() {
    final _$result = _$v ??
        new _$DisassociateAddressRequest._(
            associationId: associationId,
            publicIp: publicIp,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DisassociateAddressRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
