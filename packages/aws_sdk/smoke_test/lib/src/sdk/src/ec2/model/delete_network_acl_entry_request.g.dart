// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_acl_entry_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkAclEntryRequest extends DeleteNetworkAclEntryRequest {
  @override
  final bool dryRun;
  @override
  final bool egress;
  @override
  final String? networkAclId;
  @override
  final int ruleNumber;

  factory _$DeleteNetworkAclEntryRequest(
          [void Function(DeleteNetworkAclEntryRequestBuilder)? updates]) =>
      (new DeleteNetworkAclEntryRequestBuilder()..update(updates))._build();

  _$DeleteNetworkAclEntryRequest._(
      {required this.dryRun,
      required this.egress,
      this.networkAclId,
      required this.ruleNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteNetworkAclEntryRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        egress, r'DeleteNetworkAclEntryRequest', 'egress');
    BuiltValueNullFieldError.checkNotNull(
        ruleNumber, r'DeleteNetworkAclEntryRequest', 'ruleNumber');
  }

  @override
  DeleteNetworkAclEntryRequest rebuild(
          void Function(DeleteNetworkAclEntryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkAclEntryRequestBuilder toBuilder() =>
      new DeleteNetworkAclEntryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkAclEntryRequest &&
        dryRun == other.dryRun &&
        egress == other.egress &&
        networkAclId == other.networkAclId &&
        ruleNumber == other.ruleNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, egress.hashCode);
    _$hash = $jc(_$hash, networkAclId.hashCode);
    _$hash = $jc(_$hash, ruleNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkAclEntryRequestBuilder
    implements
        Builder<DeleteNetworkAclEntryRequest,
            DeleteNetworkAclEntryRequestBuilder> {
  _$DeleteNetworkAclEntryRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _egress;
  bool? get egress => _$this._egress;
  set egress(bool? egress) => _$this._egress = egress;

  String? _networkAclId;
  String? get networkAclId => _$this._networkAclId;
  set networkAclId(String? networkAclId) => _$this._networkAclId = networkAclId;

  int? _ruleNumber;
  int? get ruleNumber => _$this._ruleNumber;
  set ruleNumber(int? ruleNumber) => _$this._ruleNumber = ruleNumber;

  DeleteNetworkAclEntryRequestBuilder() {
    DeleteNetworkAclEntryRequest._init(this);
  }

  DeleteNetworkAclEntryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _egress = $v.egress;
      _networkAclId = $v.networkAclId;
      _ruleNumber = $v.ruleNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkAclEntryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkAclEntryRequest;
  }

  @override
  void update(void Function(DeleteNetworkAclEntryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkAclEntryRequest build() => _build();

  _$DeleteNetworkAclEntryRequest _build() {
    final _$result = _$v ??
        new _$DeleteNetworkAclEntryRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteNetworkAclEntryRequest', 'dryRun'),
            egress: BuiltValueNullFieldError.checkNotNull(
                egress, r'DeleteNetworkAclEntryRequest', 'egress'),
            networkAclId: networkAclId,
            ruleNumber: BuiltValueNullFieldError.checkNotNull(
                ruleNumber, r'DeleteNetworkAclEntryRequest', 'ruleNumber'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
