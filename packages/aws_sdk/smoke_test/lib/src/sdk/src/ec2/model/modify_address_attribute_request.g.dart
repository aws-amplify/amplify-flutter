// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_address_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyAddressAttributeRequest extends ModifyAddressAttributeRequest {
  @override
  final String? allocationId;
  @override
  final String? domainName;
  @override
  final bool dryRun;

  factory _$ModifyAddressAttributeRequest(
          [void Function(ModifyAddressAttributeRequestBuilder)? updates]) =>
      (new ModifyAddressAttributeRequestBuilder()..update(updates))._build();

  _$ModifyAddressAttributeRequest._(
      {this.allocationId, this.domainName, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyAddressAttributeRequest', 'dryRun');
  }

  @override
  ModifyAddressAttributeRequest rebuild(
          void Function(ModifyAddressAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyAddressAttributeRequestBuilder toBuilder() =>
      new ModifyAddressAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyAddressAttributeRequest &&
        allocationId == other.allocationId &&
        domainName == other.domainName &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, domainName.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyAddressAttributeRequestBuilder
    implements
        Builder<ModifyAddressAttributeRequest,
            ModifyAddressAttributeRequestBuilder> {
  _$ModifyAddressAttributeRequest? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyAddressAttributeRequestBuilder() {
    ModifyAddressAttributeRequest._init(this);
  }

  ModifyAddressAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _domainName = $v.domainName;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyAddressAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyAddressAttributeRequest;
  }

  @override
  void update(void Function(ModifyAddressAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyAddressAttributeRequest build() => _build();

  _$ModifyAddressAttributeRequest _build() {
    final _$result = _$v ??
        new _$ModifyAddressAttributeRequest._(
            allocationId: allocationId,
            domainName: domainName,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyAddressAttributeRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
