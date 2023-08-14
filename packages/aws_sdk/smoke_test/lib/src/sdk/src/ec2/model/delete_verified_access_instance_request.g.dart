// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_verified_access_instance_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVerifiedAccessInstanceRequest
    extends DeleteVerifiedAccessInstanceRequest {
  @override
  final String? verifiedAccessInstanceId;
  @override
  final bool dryRun;
  @override
  final String? clientToken;

  factory _$DeleteVerifiedAccessInstanceRequest(
          [void Function(DeleteVerifiedAccessInstanceRequestBuilder)?
              updates]) =>
      (new DeleteVerifiedAccessInstanceRequestBuilder()..update(updates))
          ._build();

  _$DeleteVerifiedAccessInstanceRequest._(
      {this.verifiedAccessInstanceId, required this.dryRun, this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVerifiedAccessInstanceRequest', 'dryRun');
  }

  @override
  DeleteVerifiedAccessInstanceRequest rebuild(
          void Function(DeleteVerifiedAccessInstanceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVerifiedAccessInstanceRequestBuilder toBuilder() =>
      new DeleteVerifiedAccessInstanceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVerifiedAccessInstanceRequest &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVerifiedAccessInstanceRequestBuilder
    implements
        Builder<DeleteVerifiedAccessInstanceRequest,
            DeleteVerifiedAccessInstanceRequestBuilder> {
  _$DeleteVerifiedAccessInstanceRequest? _$v;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  DeleteVerifiedAccessInstanceRequestBuilder() {
    DeleteVerifiedAccessInstanceRequest._init(this);
  }

  DeleteVerifiedAccessInstanceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVerifiedAccessInstanceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVerifiedAccessInstanceRequest;
  }

  @override
  void update(
      void Function(DeleteVerifiedAccessInstanceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVerifiedAccessInstanceRequest build() => _build();

  _$DeleteVerifiedAccessInstanceRequest _build() {
    final _$result = _$v ??
        new _$DeleteVerifiedAccessInstanceRequest._(
            verifiedAccessInstanceId: verifiedAccessInstanceId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteVerifiedAccessInstanceRequest', 'dryRun'),
            clientToken: clientToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
