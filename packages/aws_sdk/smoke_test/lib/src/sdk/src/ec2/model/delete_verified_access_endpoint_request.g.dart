// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_verified_access_endpoint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVerifiedAccessEndpointRequest
    extends DeleteVerifiedAccessEndpointRequest {
  @override
  final String? verifiedAccessEndpointId;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$DeleteVerifiedAccessEndpointRequest(
          [void Function(DeleteVerifiedAccessEndpointRequestBuilder)?
              updates]) =>
      (new DeleteVerifiedAccessEndpointRequestBuilder()..update(updates))
          ._build();

  _$DeleteVerifiedAccessEndpointRequest._(
      {this.verifiedAccessEndpointId, this.clientToken, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVerifiedAccessEndpointRequest', 'dryRun');
  }

  @override
  DeleteVerifiedAccessEndpointRequest rebuild(
          void Function(DeleteVerifiedAccessEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVerifiedAccessEndpointRequestBuilder toBuilder() =>
      new DeleteVerifiedAccessEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVerifiedAccessEndpointRequest &&
        verifiedAccessEndpointId == other.verifiedAccessEndpointId &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessEndpointId.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVerifiedAccessEndpointRequestBuilder
    implements
        Builder<DeleteVerifiedAccessEndpointRequest,
            DeleteVerifiedAccessEndpointRequestBuilder> {
  _$DeleteVerifiedAccessEndpointRequest? _$v;

  String? _verifiedAccessEndpointId;
  String? get verifiedAccessEndpointId => _$this._verifiedAccessEndpointId;
  set verifiedAccessEndpointId(String? verifiedAccessEndpointId) =>
      _$this._verifiedAccessEndpointId = verifiedAccessEndpointId;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteVerifiedAccessEndpointRequestBuilder() {
    DeleteVerifiedAccessEndpointRequest._init(this);
  }

  DeleteVerifiedAccessEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessEndpointId = $v.verifiedAccessEndpointId;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVerifiedAccessEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVerifiedAccessEndpointRequest;
  }

  @override
  void update(
      void Function(DeleteVerifiedAccessEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVerifiedAccessEndpointRequest build() => _build();

  _$DeleteVerifiedAccessEndpointRequest _build() {
    final _$result = _$v ??
        new _$DeleteVerifiedAccessEndpointRequest._(
            verifiedAccessEndpointId: verifiedAccessEndpointId,
            clientToken: clientToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteVerifiedAccessEndpointRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
