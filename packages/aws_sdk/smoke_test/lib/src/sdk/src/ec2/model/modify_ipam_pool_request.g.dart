// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_ipam_pool_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIpamPoolRequest extends ModifyIpamPoolRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamPoolId;
  @override
  final String? description;
  @override
  final bool autoImport;
  @override
  final int allocationMinNetmaskLength;
  @override
  final int allocationMaxNetmaskLength;
  @override
  final int allocationDefaultNetmaskLength;
  @override
  final bool clearAllocationDefaultNetmaskLength;
  @override
  final _i3.BuiltList<RequestIpamResourceTag>? addAllocationResourceTags;
  @override
  final _i3.BuiltList<RequestIpamResourceTag>? removeAllocationResourceTags;

  factory _$ModifyIpamPoolRequest(
          [void Function(ModifyIpamPoolRequestBuilder)? updates]) =>
      (new ModifyIpamPoolRequestBuilder()..update(updates))._build();

  _$ModifyIpamPoolRequest._(
      {required this.dryRun,
      this.ipamPoolId,
      this.description,
      required this.autoImport,
      required this.allocationMinNetmaskLength,
      required this.allocationMaxNetmaskLength,
      required this.allocationDefaultNetmaskLength,
      required this.clearAllocationDefaultNetmaskLength,
      this.addAllocationResourceTags,
      this.removeAllocationResourceTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyIpamPoolRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        autoImport, r'ModifyIpamPoolRequest', 'autoImport');
    BuiltValueNullFieldError.checkNotNull(allocationMinNetmaskLength,
        r'ModifyIpamPoolRequest', 'allocationMinNetmaskLength');
    BuiltValueNullFieldError.checkNotNull(allocationMaxNetmaskLength,
        r'ModifyIpamPoolRequest', 'allocationMaxNetmaskLength');
    BuiltValueNullFieldError.checkNotNull(allocationDefaultNetmaskLength,
        r'ModifyIpamPoolRequest', 'allocationDefaultNetmaskLength');
    BuiltValueNullFieldError.checkNotNull(clearAllocationDefaultNetmaskLength,
        r'ModifyIpamPoolRequest', 'clearAllocationDefaultNetmaskLength');
  }

  @override
  ModifyIpamPoolRequest rebuild(
          void Function(ModifyIpamPoolRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIpamPoolRequestBuilder toBuilder() =>
      new ModifyIpamPoolRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIpamPoolRequest &&
        dryRun == other.dryRun &&
        ipamPoolId == other.ipamPoolId &&
        description == other.description &&
        autoImport == other.autoImport &&
        allocationMinNetmaskLength == other.allocationMinNetmaskLength &&
        allocationMaxNetmaskLength == other.allocationMaxNetmaskLength &&
        allocationDefaultNetmaskLength ==
            other.allocationDefaultNetmaskLength &&
        clearAllocationDefaultNetmaskLength ==
            other.clearAllocationDefaultNetmaskLength &&
        addAllocationResourceTags == other.addAllocationResourceTags &&
        removeAllocationResourceTags == other.removeAllocationResourceTags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, autoImport.hashCode);
    _$hash = $jc(_$hash, allocationMinNetmaskLength.hashCode);
    _$hash = $jc(_$hash, allocationMaxNetmaskLength.hashCode);
    _$hash = $jc(_$hash, allocationDefaultNetmaskLength.hashCode);
    _$hash = $jc(_$hash, clearAllocationDefaultNetmaskLength.hashCode);
    _$hash = $jc(_$hash, addAllocationResourceTags.hashCode);
    _$hash = $jc(_$hash, removeAllocationResourceTags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIpamPoolRequestBuilder
    implements Builder<ModifyIpamPoolRequest, ModifyIpamPoolRequestBuilder> {
  _$ModifyIpamPoolRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _autoImport;
  bool? get autoImport => _$this._autoImport;
  set autoImport(bool? autoImport) => _$this._autoImport = autoImport;

  int? _allocationMinNetmaskLength;
  int? get allocationMinNetmaskLength => _$this._allocationMinNetmaskLength;
  set allocationMinNetmaskLength(int? allocationMinNetmaskLength) =>
      _$this._allocationMinNetmaskLength = allocationMinNetmaskLength;

  int? _allocationMaxNetmaskLength;
  int? get allocationMaxNetmaskLength => _$this._allocationMaxNetmaskLength;
  set allocationMaxNetmaskLength(int? allocationMaxNetmaskLength) =>
      _$this._allocationMaxNetmaskLength = allocationMaxNetmaskLength;

  int? _allocationDefaultNetmaskLength;
  int? get allocationDefaultNetmaskLength =>
      _$this._allocationDefaultNetmaskLength;
  set allocationDefaultNetmaskLength(int? allocationDefaultNetmaskLength) =>
      _$this._allocationDefaultNetmaskLength = allocationDefaultNetmaskLength;

  bool? _clearAllocationDefaultNetmaskLength;
  bool? get clearAllocationDefaultNetmaskLength =>
      _$this._clearAllocationDefaultNetmaskLength;
  set clearAllocationDefaultNetmaskLength(
          bool? clearAllocationDefaultNetmaskLength) =>
      _$this._clearAllocationDefaultNetmaskLength =
          clearAllocationDefaultNetmaskLength;

  _i3.ListBuilder<RequestIpamResourceTag>? _addAllocationResourceTags;
  _i3.ListBuilder<RequestIpamResourceTag> get addAllocationResourceTags =>
      _$this._addAllocationResourceTags ??=
          new _i3.ListBuilder<RequestIpamResourceTag>();
  set addAllocationResourceTags(
          _i3.ListBuilder<RequestIpamResourceTag>? addAllocationResourceTags) =>
      _$this._addAllocationResourceTags = addAllocationResourceTags;

  _i3.ListBuilder<RequestIpamResourceTag>? _removeAllocationResourceTags;
  _i3.ListBuilder<RequestIpamResourceTag> get removeAllocationResourceTags =>
      _$this._removeAllocationResourceTags ??=
          new _i3.ListBuilder<RequestIpamResourceTag>();
  set removeAllocationResourceTags(
          _i3.ListBuilder<RequestIpamResourceTag>?
              removeAllocationResourceTags) =>
      _$this._removeAllocationResourceTags = removeAllocationResourceTags;

  ModifyIpamPoolRequestBuilder() {
    ModifyIpamPoolRequest._init(this);
  }

  ModifyIpamPoolRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamPoolId = $v.ipamPoolId;
      _description = $v.description;
      _autoImport = $v.autoImport;
      _allocationMinNetmaskLength = $v.allocationMinNetmaskLength;
      _allocationMaxNetmaskLength = $v.allocationMaxNetmaskLength;
      _allocationDefaultNetmaskLength = $v.allocationDefaultNetmaskLength;
      _clearAllocationDefaultNetmaskLength =
          $v.clearAllocationDefaultNetmaskLength;
      _addAllocationResourceTags = $v.addAllocationResourceTags?.toBuilder();
      _removeAllocationResourceTags =
          $v.removeAllocationResourceTags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIpamPoolRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIpamPoolRequest;
  }

  @override
  void update(void Function(ModifyIpamPoolRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIpamPoolRequest build() => _build();

  _$ModifyIpamPoolRequest _build() {
    _$ModifyIpamPoolRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyIpamPoolRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyIpamPoolRequest', 'dryRun'),
              ipamPoolId: ipamPoolId,
              description: description,
              autoImport: BuiltValueNullFieldError.checkNotNull(
                  autoImport, r'ModifyIpamPoolRequest', 'autoImport'),
              allocationMinNetmaskLength: BuiltValueNullFieldError.checkNotNull(
                  allocationMinNetmaskLength, r'ModifyIpamPoolRequest', 'allocationMinNetmaskLength'),
              allocationMaxNetmaskLength: BuiltValueNullFieldError.checkNotNull(
                  allocationMaxNetmaskLength, r'ModifyIpamPoolRequest', 'allocationMaxNetmaskLength'),
              allocationDefaultNetmaskLength: BuiltValueNullFieldError.checkNotNull(
                  allocationDefaultNetmaskLength,
                  r'ModifyIpamPoolRequest',
                  'allocationDefaultNetmaskLength'),
              clearAllocationDefaultNetmaskLength:
                  BuiltValueNullFieldError.checkNotNull(
                      clearAllocationDefaultNetmaskLength,
                      r'ModifyIpamPoolRequest',
                      'clearAllocationDefaultNetmaskLength'),
              addAllocationResourceTags: _addAllocationResourceTags?.build(),
              removeAllocationResourceTags: _removeAllocationResourceTags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addAllocationResourceTags';
        _addAllocationResourceTags?.build();
        _$failedField = 'removeAllocationResourceTags';
        _removeAllocationResourceTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyIpamPoolRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
