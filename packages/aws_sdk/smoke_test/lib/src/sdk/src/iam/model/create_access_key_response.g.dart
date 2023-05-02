// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_access_key_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAccessKeyResponse extends CreateAccessKeyResponse {
  @override
  final _i2.AccessKey accessKey;

  factory _$CreateAccessKeyResponse(
          [void Function(CreateAccessKeyResponseBuilder)? updates]) =>
      (new CreateAccessKeyResponseBuilder()..update(updates))._build();

  _$CreateAccessKeyResponse._({required this.accessKey}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessKey, r'CreateAccessKeyResponse', 'accessKey');
  }

  @override
  CreateAccessKeyResponse rebuild(
          void Function(CreateAccessKeyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAccessKeyResponseBuilder toBuilder() =>
      new CreateAccessKeyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAccessKeyResponse && accessKey == other.accessKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateAccessKeyResponseBuilder
    implements
        Builder<CreateAccessKeyResponse, CreateAccessKeyResponseBuilder> {
  _$CreateAccessKeyResponse? _$v;

  _i2.AccessKeyBuilder? _accessKey;
  _i2.AccessKeyBuilder get accessKey =>
      _$this._accessKey ??= new _i2.AccessKeyBuilder();
  set accessKey(_i2.AccessKeyBuilder? accessKey) =>
      _$this._accessKey = accessKey;

  CreateAccessKeyResponseBuilder() {
    CreateAccessKeyResponse._init(this);
  }

  CreateAccessKeyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessKey = $v.accessKey.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAccessKeyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAccessKeyResponse;
  }

  @override
  void update(void Function(CreateAccessKeyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAccessKeyResponse build() => _build();

  _$CreateAccessKeyResponse _build() {
    _$CreateAccessKeyResponse _$result;
    try {
      _$result =
          _$v ?? new _$CreateAccessKeyResponse._(accessKey: accessKey.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessKey';
        accessKey.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateAccessKeyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
