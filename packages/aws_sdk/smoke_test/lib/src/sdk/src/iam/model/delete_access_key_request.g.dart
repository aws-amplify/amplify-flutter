// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_access_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteAccessKeyRequest extends DeleteAccessKeyRequest {
  @override
  final String? userName;
  @override
  final String accessKeyId;

  factory _$DeleteAccessKeyRequest(
          [void Function(DeleteAccessKeyRequestBuilder)? updates]) =>
      (new DeleteAccessKeyRequestBuilder()..update(updates))._build();

  _$DeleteAccessKeyRequest._({this.userName, required this.accessKeyId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessKeyId, r'DeleteAccessKeyRequest', 'accessKeyId');
  }

  @override
  DeleteAccessKeyRequest rebuild(
          void Function(DeleteAccessKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteAccessKeyRequestBuilder toBuilder() =>
      new DeleteAccessKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteAccessKeyRequest &&
        userName == other.userName &&
        accessKeyId == other.accessKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, accessKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteAccessKeyRequestBuilder
    implements Builder<DeleteAccessKeyRequest, DeleteAccessKeyRequestBuilder> {
  _$DeleteAccessKeyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(String? accessKeyId) => _$this._accessKeyId = accessKeyId;

  DeleteAccessKeyRequestBuilder() {
    DeleteAccessKeyRequest._init(this);
  }

  DeleteAccessKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _accessKeyId = $v.accessKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteAccessKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteAccessKeyRequest;
  }

  @override
  void update(void Function(DeleteAccessKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteAccessKeyRequest build() => _build();

  _$DeleteAccessKeyRequest _build() {
    final _$result = _$v ??
        new _$DeleteAccessKeyRequest._(
            userName: userName,
            accessKeyId: BuiltValueNullFieldError.checkNotNull(
                accessKeyId, r'DeleteAccessKeyRequest', 'accessKeyId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
