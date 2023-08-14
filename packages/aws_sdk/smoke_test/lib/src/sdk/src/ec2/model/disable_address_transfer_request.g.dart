// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_address_transfer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableAddressTransferRequest extends DisableAddressTransferRequest {
  @override
  final String? allocationId;
  @override
  final bool dryRun;

  factory _$DisableAddressTransferRequest(
          [void Function(DisableAddressTransferRequestBuilder)? updates]) =>
      (new DisableAddressTransferRequestBuilder()..update(updates))._build();

  _$DisableAddressTransferRequest._({this.allocationId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisableAddressTransferRequest', 'dryRun');
  }

  @override
  DisableAddressTransferRequest rebuild(
          void Function(DisableAddressTransferRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableAddressTransferRequestBuilder toBuilder() =>
      new DisableAddressTransferRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableAddressTransferRequest &&
        allocationId == other.allocationId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableAddressTransferRequestBuilder
    implements
        Builder<DisableAddressTransferRequest,
            DisableAddressTransferRequestBuilder> {
  _$DisableAddressTransferRequest? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisableAddressTransferRequestBuilder() {
    DisableAddressTransferRequest._init(this);
  }

  DisableAddressTransferRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableAddressTransferRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableAddressTransferRequest;
  }

  @override
  void update(void Function(DisableAddressTransferRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableAddressTransferRequest build() => _build();

  _$DisableAddressTransferRequest _build() {
    final _$result = _$v ??
        new _$DisableAddressTransferRequest._(
            allocationId: allocationId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DisableAddressTransferRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
