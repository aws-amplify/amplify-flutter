// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.payload_too_large_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayloadTooLargeException extends PayloadTooLargeException {
  @override
  final String? message;
  @override
  final String? requestId;
  @override
  final Map<String, String>? headers;

  factory _$PayloadTooLargeException(
          [void Function(PayloadTooLargeExceptionBuilder)? updates]) =>
      (new PayloadTooLargeExceptionBuilder()..update(updates))._build();

  _$PayloadTooLargeException._({this.message, this.requestId, this.headers})
      : super._();

  @override
  PayloadTooLargeException rebuild(
          void Function(PayloadTooLargeExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayloadTooLargeExceptionBuilder toBuilder() =>
      new PayloadTooLargeExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayloadTooLargeException &&
        message == other.message &&
        requestId == other.requestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PayloadTooLargeExceptionBuilder
    implements
        Builder<PayloadTooLargeException, PayloadTooLargeExceptionBuilder> {
  _$PayloadTooLargeException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  PayloadTooLargeExceptionBuilder() {
    PayloadTooLargeException._init(this);
  }

  PayloadTooLargeExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _requestId = $v.requestId;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayloadTooLargeException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayloadTooLargeException;
  }

  @override
  void update(void Function(PayloadTooLargeExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayloadTooLargeException build() => _build();

  _$PayloadTooLargeException _build() {
    final _$result = _$v ??
        new _$PayloadTooLargeException._(
            message: message, requestId: requestId, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
