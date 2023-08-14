// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_address_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetAddressAttributeRequest extends ResetAddressAttributeRequest {
  @override
  final String? allocationId;
  @override
  final AddressAttributeName? attribute;
  @override
  final bool dryRun;

  factory _$ResetAddressAttributeRequest(
          [void Function(ResetAddressAttributeRequestBuilder)? updates]) =>
      (new ResetAddressAttributeRequestBuilder()..update(updates))._build();

  _$ResetAddressAttributeRequest._(
      {this.allocationId, this.attribute, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ResetAddressAttributeRequest', 'dryRun');
  }

  @override
  ResetAddressAttributeRequest rebuild(
          void Function(ResetAddressAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetAddressAttributeRequestBuilder toBuilder() =>
      new ResetAddressAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetAddressAttributeRequest &&
        allocationId == other.allocationId &&
        attribute == other.attribute &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResetAddressAttributeRequestBuilder
    implements
        Builder<ResetAddressAttributeRequest,
            ResetAddressAttributeRequestBuilder> {
  _$ResetAddressAttributeRequest? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  AddressAttributeName? _attribute;
  AddressAttributeName? get attribute => _$this._attribute;
  set attribute(AddressAttributeName? attribute) =>
      _$this._attribute = attribute;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ResetAddressAttributeRequestBuilder() {
    ResetAddressAttributeRequest._init(this);
  }

  ResetAddressAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _attribute = $v.attribute;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetAddressAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetAddressAttributeRequest;
  }

  @override
  void update(void Function(ResetAddressAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetAddressAttributeRequest build() => _build();

  _$ResetAddressAttributeRequest _build() {
    final _$result = _$v ??
        new _$ResetAddressAttributeRequest._(
            allocationId: allocationId,
            attribute: attribute,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ResetAddressAttributeRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
