// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_address_transfer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableAddressTransferRequest extends EnableAddressTransferRequest {
  @override
  final String? allocationId;
  @override
  final String? transferAccountId;
  @override
  final bool dryRun;

  factory _$EnableAddressTransferRequest(
          [void Function(EnableAddressTransferRequestBuilder)? updates]) =>
      (new EnableAddressTransferRequestBuilder()..update(updates))._build();

  _$EnableAddressTransferRequest._(
      {this.allocationId, this.transferAccountId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'EnableAddressTransferRequest', 'dryRun');
  }

  @override
  EnableAddressTransferRequest rebuild(
          void Function(EnableAddressTransferRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableAddressTransferRequestBuilder toBuilder() =>
      new EnableAddressTransferRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableAddressTransferRequest &&
        allocationId == other.allocationId &&
        transferAccountId == other.transferAccountId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, transferAccountId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableAddressTransferRequestBuilder
    implements
        Builder<EnableAddressTransferRequest,
            EnableAddressTransferRequestBuilder> {
  _$EnableAddressTransferRequest? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _transferAccountId;
  String? get transferAccountId => _$this._transferAccountId;
  set transferAccountId(String? transferAccountId) =>
      _$this._transferAccountId = transferAccountId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  EnableAddressTransferRequestBuilder() {
    EnableAddressTransferRequest._init(this);
  }

  EnableAddressTransferRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _transferAccountId = $v.transferAccountId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableAddressTransferRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableAddressTransferRequest;
  }

  @override
  void update(void Function(EnableAddressTransferRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableAddressTransferRequest build() => _build();

  _$EnableAddressTransferRequest _build() {
    final _$result = _$v ??
        new _$EnableAddressTransferRequest._(
            allocationId: allocationId,
            transferAccountId: transferAccountId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'EnableAddressTransferRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
