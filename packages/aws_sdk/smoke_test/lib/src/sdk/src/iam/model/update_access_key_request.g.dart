// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_access_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAccessKeyRequest extends UpdateAccessKeyRequest {
  @override
  final String? userName;
  @override
  final String accessKeyId;
  @override
  final _i3.StatusType status;

  factory _$UpdateAccessKeyRequest(
          [void Function(UpdateAccessKeyRequestBuilder)? updates]) =>
      (new UpdateAccessKeyRequestBuilder()..update(updates))._build();

  _$UpdateAccessKeyRequest._(
      {this.userName, required this.accessKeyId, required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessKeyId, r'UpdateAccessKeyRequest', 'accessKeyId');
    BuiltValueNullFieldError.checkNotNull(
        status, r'UpdateAccessKeyRequest', 'status');
  }

  @override
  UpdateAccessKeyRequest rebuild(
          void Function(UpdateAccessKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAccessKeyRequestBuilder toBuilder() =>
      new UpdateAccessKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAccessKeyRequest &&
        userName == other.userName &&
        accessKeyId == other.accessKeyId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, accessKeyId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateAccessKeyRequestBuilder
    implements Builder<UpdateAccessKeyRequest, UpdateAccessKeyRequestBuilder> {
  _$UpdateAccessKeyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(String? accessKeyId) => _$this._accessKeyId = accessKeyId;

  _i3.StatusType? _status;
  _i3.StatusType? get status => _$this._status;
  set status(_i3.StatusType? status) => _$this._status = status;

  UpdateAccessKeyRequestBuilder() {
    UpdateAccessKeyRequest._init(this);
  }

  UpdateAccessKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _accessKeyId = $v.accessKeyId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAccessKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAccessKeyRequest;
  }

  @override
  void update(void Function(UpdateAccessKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAccessKeyRequest build() => _build();

  _$UpdateAccessKeyRequest _build() {
    final _$result = _$v ??
        new _$UpdateAccessKeyRequest._(
            userName: userName,
            accessKeyId: BuiltValueNullFieldError.checkNotNull(
                accessKeyId, r'UpdateAccessKeyRequest', 'accessKeyId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'UpdateAccessKeyRequest', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
