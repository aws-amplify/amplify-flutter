// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.decode_authorization_message_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DecodeAuthorizationMessageRequest
    extends DecodeAuthorizationMessageRequest {
  @override
  final String encodedMessage;

  factory _$DecodeAuthorizationMessageRequest(
          [void Function(DecodeAuthorizationMessageRequestBuilder)? updates]) =>
      (new DecodeAuthorizationMessageRequestBuilder()..update(updates))
          ._build();

  _$DecodeAuthorizationMessageRequest._({required this.encodedMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        encodedMessage, r'DecodeAuthorizationMessageRequest', 'encodedMessage');
  }

  @override
  DecodeAuthorizationMessageRequest rebuild(
          void Function(DecodeAuthorizationMessageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DecodeAuthorizationMessageRequestBuilder toBuilder() =>
      new DecodeAuthorizationMessageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DecodeAuthorizationMessageRequest &&
        encodedMessage == other.encodedMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, encodedMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DecodeAuthorizationMessageRequestBuilder
    implements
        Builder<DecodeAuthorizationMessageRequest,
            DecodeAuthorizationMessageRequestBuilder> {
  _$DecodeAuthorizationMessageRequest? _$v;

  String? _encodedMessage;
  String? get encodedMessage => _$this._encodedMessage;
  set encodedMessage(String? encodedMessage) =>
      _$this._encodedMessage = encodedMessage;

  DecodeAuthorizationMessageRequestBuilder() {
    DecodeAuthorizationMessageRequest._init(this);
  }

  DecodeAuthorizationMessageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _encodedMessage = $v.encodedMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DecodeAuthorizationMessageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DecodeAuthorizationMessageRequest;
  }

  @override
  void update(
      void Function(DecodeAuthorizationMessageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DecodeAuthorizationMessageRequest build() => _build();

  _$DecodeAuthorizationMessageRequest _build() {
    final _$result = _$v ??
        new _$DecodeAuthorizationMessageRequest._(
            encodedMessage: BuiltValueNullFieldError.checkNotNull(
                encodedMessage,
                r'DecodeAuthorizationMessageRequest',
                'encodedMessage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
