// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_user_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyUserAttributeRequest extends VerifyUserAttributeRequest {
  @override
  final String accessToken;
  @override
  final String attributeName;
  @override
  final String code;

  factory _$VerifyUserAttributeRequest([
    void Function(VerifyUserAttributeRequestBuilder)? updates,
  ]) => (VerifyUserAttributeRequestBuilder()..update(updates))._build();

  _$VerifyUserAttributeRequest._({
    required this.accessToken,
    required this.attributeName,
    required this.code,
  }) : super._();
  @override
  VerifyUserAttributeRequest rebuild(
    void Function(VerifyUserAttributeRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VerifyUserAttributeRequestBuilder toBuilder() =>
      VerifyUserAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyUserAttributeRequest &&
        accessToken == other.accessToken &&
        attributeName == other.attributeName &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, attributeName.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifyUserAttributeRequestBuilder
    implements
        Builder<VerifyUserAttributeRequest, VerifyUserAttributeRequestBuilder> {
  _$VerifyUserAttributeRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  VerifyUserAttributeRequestBuilder();

  VerifyUserAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _attributeName = $v.attributeName;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyUserAttributeRequest other) {
    _$v = other as _$VerifyUserAttributeRequest;
  }

  @override
  void update(void Function(VerifyUserAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyUserAttributeRequest build() => _build();

  _$VerifyUserAttributeRequest _build() {
    final _$result =
        _$v ??
        _$VerifyUserAttributeRequest._(
          accessToken: BuiltValueNullFieldError.checkNotNull(
            accessToken,
            r'VerifyUserAttributeRequest',
            'accessToken',
          ),
          attributeName: BuiltValueNullFieldError.checkNotNull(
            attributeName,
            r'VerifyUserAttributeRequest',
            'attributeName',
          ),
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'VerifyUserAttributeRequest',
            'code',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
