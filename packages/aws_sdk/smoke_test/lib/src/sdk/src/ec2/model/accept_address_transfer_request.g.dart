// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_address_transfer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptAddressTransferRequest extends AcceptAddressTransferRequest {
  @override
  final String? address;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$AcceptAddressTransferRequest(
          [void Function(AcceptAddressTransferRequestBuilder)? updates]) =>
      (new AcceptAddressTransferRequestBuilder()..update(updates))._build();

  _$AcceptAddressTransferRequest._(
      {this.address, this.tagSpecifications, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AcceptAddressTransferRequest', 'dryRun');
  }

  @override
  AcceptAddressTransferRequest rebuild(
          void Function(AcceptAddressTransferRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptAddressTransferRequestBuilder toBuilder() =>
      new AcceptAddressTransferRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptAddressTransferRequest &&
        address == other.address &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AcceptAddressTransferRequestBuilder
    implements
        Builder<AcceptAddressTransferRequest,
            AcceptAddressTransferRequestBuilder> {
  _$AcceptAddressTransferRequest? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AcceptAddressTransferRequestBuilder() {
    AcceptAddressTransferRequest._init(this);
  }

  AcceptAddressTransferRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptAddressTransferRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptAddressTransferRequest;
  }

  @override
  void update(void Function(AcceptAddressTransferRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptAddressTransferRequest build() => _build();

  _$AcceptAddressTransferRequest _build() {
    _$AcceptAddressTransferRequest _$result;
    try {
      _$result = _$v ??
          new _$AcceptAddressTransferRequest._(
              address: address,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AcceptAddressTransferRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AcceptAddressTransferRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
