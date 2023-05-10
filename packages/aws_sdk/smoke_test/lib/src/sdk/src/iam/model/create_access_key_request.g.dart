// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_access_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAccessKeyRequest extends CreateAccessKeyRequest {
  @override
  final String? userName;

  factory _$CreateAccessKeyRequest(
          [void Function(CreateAccessKeyRequestBuilder)? updates]) =>
      (new CreateAccessKeyRequestBuilder()..update(updates))._build();

  _$CreateAccessKeyRequest._({this.userName}) : super._();

  @override
  CreateAccessKeyRequest rebuild(
          void Function(CreateAccessKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAccessKeyRequestBuilder toBuilder() =>
      new CreateAccessKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAccessKeyRequest && userName == other.userName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateAccessKeyRequestBuilder
    implements Builder<CreateAccessKeyRequest, CreateAccessKeyRequestBuilder> {
  _$CreateAccessKeyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  CreateAccessKeyRequestBuilder() {
    CreateAccessKeyRequest._init(this);
  }

  CreateAccessKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAccessKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAccessKeyRequest;
  }

  @override
  void update(void Function(CreateAccessKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAccessKeyRequest build() => _build();

  _$CreateAccessKeyRequest _build() {
    final _$result = _$v ?? new _$CreateAccessKeyRequest._(userName: userName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
