// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_group_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessGroupRequest
    extends ModifyVerifiedAccessGroupRequest {
  @override
  final String? verifiedAccessGroupId;
  @override
  final String? verifiedAccessInstanceId;
  @override
  final String? description;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$ModifyVerifiedAccessGroupRequest(
          [void Function(ModifyVerifiedAccessGroupRequestBuilder)? updates]) =>
      (new ModifyVerifiedAccessGroupRequestBuilder()..update(updates))._build();

  _$ModifyVerifiedAccessGroupRequest._(
      {this.verifiedAccessGroupId,
      this.verifiedAccessInstanceId,
      this.description,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVerifiedAccessGroupRequest', 'dryRun');
  }

  @override
  ModifyVerifiedAccessGroupRequest rebuild(
          void Function(ModifyVerifiedAccessGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessGroupRequestBuilder toBuilder() =>
      new ModifyVerifiedAccessGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessGroupRequest &&
        verifiedAccessGroupId == other.verifiedAccessGroupId &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        description == other.description &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessGroupId.hashCode);
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessGroupRequestBuilder
    implements
        Builder<ModifyVerifiedAccessGroupRequest,
            ModifyVerifiedAccessGroupRequestBuilder> {
  _$ModifyVerifiedAccessGroupRequest? _$v;

  String? _verifiedAccessGroupId;
  String? get verifiedAccessGroupId => _$this._verifiedAccessGroupId;
  set verifiedAccessGroupId(String? verifiedAccessGroupId) =>
      _$this._verifiedAccessGroupId = verifiedAccessGroupId;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyVerifiedAccessGroupRequestBuilder() {
    ModifyVerifiedAccessGroupRequest._init(this);
  }

  ModifyVerifiedAccessGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessGroupId = $v.verifiedAccessGroupId;
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _description = $v.description;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessGroupRequest;
  }

  @override
  void update(void Function(ModifyVerifiedAccessGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessGroupRequest build() => _build();

  _$ModifyVerifiedAccessGroupRequest _build() {
    final _$result = _$v ??
        new _$ModifyVerifiedAccessGroupRequest._(
            verifiedAccessGroupId: verifiedAccessGroupId,
            verifiedAccessInstanceId: verifiedAccessInstanceId,
            description: description,
            clientToken: clientToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyVerifiedAccessGroupRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
