// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_trunk_interface_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateTrunkInterfaceRequest extends AssociateTrunkInterfaceRequest {
  @override
  final String? branchInterfaceId;
  @override
  final String? trunkInterfaceId;
  @override
  final int vlanId;
  @override
  final int greKey;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$AssociateTrunkInterfaceRequest(
          [void Function(AssociateTrunkInterfaceRequestBuilder)? updates]) =>
      (new AssociateTrunkInterfaceRequestBuilder()..update(updates))._build();

  _$AssociateTrunkInterfaceRequest._(
      {this.branchInterfaceId,
      this.trunkInterfaceId,
      required this.vlanId,
      required this.greKey,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vlanId, r'AssociateTrunkInterfaceRequest', 'vlanId');
    BuiltValueNullFieldError.checkNotNull(
        greKey, r'AssociateTrunkInterfaceRequest', 'greKey');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssociateTrunkInterfaceRequest', 'dryRun');
  }

  @override
  AssociateTrunkInterfaceRequest rebuild(
          void Function(AssociateTrunkInterfaceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateTrunkInterfaceRequestBuilder toBuilder() =>
      new AssociateTrunkInterfaceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateTrunkInterfaceRequest &&
        branchInterfaceId == other.branchInterfaceId &&
        trunkInterfaceId == other.trunkInterfaceId &&
        vlanId == other.vlanId &&
        greKey == other.greKey &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, branchInterfaceId.hashCode);
    _$hash = $jc(_$hash, trunkInterfaceId.hashCode);
    _$hash = $jc(_$hash, vlanId.hashCode);
    _$hash = $jc(_$hash, greKey.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateTrunkInterfaceRequestBuilder
    implements
        Builder<AssociateTrunkInterfaceRequest,
            AssociateTrunkInterfaceRequestBuilder> {
  _$AssociateTrunkInterfaceRequest? _$v;

  String? _branchInterfaceId;
  String? get branchInterfaceId => _$this._branchInterfaceId;
  set branchInterfaceId(String? branchInterfaceId) =>
      _$this._branchInterfaceId = branchInterfaceId;

  String? _trunkInterfaceId;
  String? get trunkInterfaceId => _$this._trunkInterfaceId;
  set trunkInterfaceId(String? trunkInterfaceId) =>
      _$this._trunkInterfaceId = trunkInterfaceId;

  int? _vlanId;
  int? get vlanId => _$this._vlanId;
  set vlanId(int? vlanId) => _$this._vlanId = vlanId;

  int? _greKey;
  int? get greKey => _$this._greKey;
  set greKey(int? greKey) => _$this._greKey = greKey;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AssociateTrunkInterfaceRequestBuilder() {
    AssociateTrunkInterfaceRequest._init(this);
  }

  AssociateTrunkInterfaceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _branchInterfaceId = $v.branchInterfaceId;
      _trunkInterfaceId = $v.trunkInterfaceId;
      _vlanId = $v.vlanId;
      _greKey = $v.greKey;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateTrunkInterfaceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateTrunkInterfaceRequest;
  }

  @override
  void update(void Function(AssociateTrunkInterfaceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateTrunkInterfaceRequest build() => _build();

  _$AssociateTrunkInterfaceRequest _build() {
    final _$result = _$v ??
        new _$AssociateTrunkInterfaceRequest._(
            branchInterfaceId: branchInterfaceId,
            trunkInterfaceId: trunkInterfaceId,
            vlanId: BuiltValueNullFieldError.checkNotNull(
                vlanId, r'AssociateTrunkInterfaceRequest', 'vlanId'),
            greKey: BuiltValueNullFieldError.checkNotNull(
                greKey, r'AssociateTrunkInterfaceRequest', 'greKey'),
            clientToken: clientToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AssociateTrunkInterfaceRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
