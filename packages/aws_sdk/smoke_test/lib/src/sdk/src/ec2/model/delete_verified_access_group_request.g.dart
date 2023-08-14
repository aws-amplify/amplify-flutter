// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_verified_access_group_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVerifiedAccessGroupRequest
    extends DeleteVerifiedAccessGroupRequest {
  @override
  final String? verifiedAccessGroupId;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$DeleteVerifiedAccessGroupRequest(
          [void Function(DeleteVerifiedAccessGroupRequestBuilder)? updates]) =>
      (new DeleteVerifiedAccessGroupRequestBuilder()..update(updates))._build();

  _$DeleteVerifiedAccessGroupRequest._(
      {this.verifiedAccessGroupId, this.clientToken, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVerifiedAccessGroupRequest', 'dryRun');
  }

  @override
  DeleteVerifiedAccessGroupRequest rebuild(
          void Function(DeleteVerifiedAccessGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVerifiedAccessGroupRequestBuilder toBuilder() =>
      new DeleteVerifiedAccessGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVerifiedAccessGroupRequest &&
        verifiedAccessGroupId == other.verifiedAccessGroupId &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessGroupId.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVerifiedAccessGroupRequestBuilder
    implements
        Builder<DeleteVerifiedAccessGroupRequest,
            DeleteVerifiedAccessGroupRequestBuilder> {
  _$DeleteVerifiedAccessGroupRequest? _$v;

  String? _verifiedAccessGroupId;
  String? get verifiedAccessGroupId => _$this._verifiedAccessGroupId;
  set verifiedAccessGroupId(String? verifiedAccessGroupId) =>
      _$this._verifiedAccessGroupId = verifiedAccessGroupId;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteVerifiedAccessGroupRequestBuilder() {
    DeleteVerifiedAccessGroupRequest._init(this);
  }

  DeleteVerifiedAccessGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessGroupId = $v.verifiedAccessGroupId;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVerifiedAccessGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVerifiedAccessGroupRequest;
  }

  @override
  void update(void Function(DeleteVerifiedAccessGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVerifiedAccessGroupRequest build() => _build();

  _$DeleteVerifiedAccessGroupRequest _build() {
    final _$result = _$v ??
        new _$DeleteVerifiedAccessGroupRequest._(
            verifiedAccessGroupId: verifiedAccessGroupId,
            clientToken: clientToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteVerifiedAccessGroupRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
