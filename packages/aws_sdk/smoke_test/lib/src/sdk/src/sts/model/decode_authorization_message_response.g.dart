// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.decode_authorization_message_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DecodeAuthorizationMessageResponse
    extends DecodeAuthorizationMessageResponse {
  @override
  final String? decodedMessage;

  factory _$DecodeAuthorizationMessageResponse(
          [void Function(DecodeAuthorizationMessageResponseBuilder)?
              updates]) =>
      (new DecodeAuthorizationMessageResponseBuilder()..update(updates))
          ._build();

  _$DecodeAuthorizationMessageResponse._({this.decodedMessage}) : super._();

  @override
  DecodeAuthorizationMessageResponse rebuild(
          void Function(DecodeAuthorizationMessageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DecodeAuthorizationMessageResponseBuilder toBuilder() =>
      new DecodeAuthorizationMessageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DecodeAuthorizationMessageResponse &&
        decodedMessage == other.decodedMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, decodedMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DecodeAuthorizationMessageResponseBuilder
    implements
        Builder<DecodeAuthorizationMessageResponse,
            DecodeAuthorizationMessageResponseBuilder> {
  _$DecodeAuthorizationMessageResponse? _$v;

  String? _decodedMessage;
  String? get decodedMessage => _$this._decodedMessage;
  set decodedMessage(String? decodedMessage) =>
      _$this._decodedMessage = decodedMessage;

  DecodeAuthorizationMessageResponseBuilder() {
    DecodeAuthorizationMessageResponse._init(this);
  }

  DecodeAuthorizationMessageResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _decodedMessage = $v.decodedMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DecodeAuthorizationMessageResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DecodeAuthorizationMessageResponse;
  }

  @override
  void update(
      void Function(DecodeAuthorizationMessageResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DecodeAuthorizationMessageResponse build() => _build();

  _$DecodeAuthorizationMessageResponse _build() {
    final _$result = _$v ??
        new _$DecodeAuthorizationMessageResponse._(
            decodedMessage: decodedMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
