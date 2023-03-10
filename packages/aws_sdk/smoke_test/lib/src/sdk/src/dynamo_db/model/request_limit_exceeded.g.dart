// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.request_limit_exceeded;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestLimitExceeded extends RequestLimitExceeded {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$RequestLimitExceeded(
          [void Function(RequestLimitExceededBuilder)? updates]) =>
      (new RequestLimitExceededBuilder()..update(updates))._build();

  _$RequestLimitExceeded._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  RequestLimitExceeded rebuild(
          void Function(RequestLimitExceededBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestLimitExceededBuilder toBuilder() =>
      new RequestLimitExceededBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestLimitExceeded && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequestLimitExceededBuilder
    implements Builder<RequestLimitExceeded, RequestLimitExceededBuilder> {
  _$RequestLimitExceeded? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  RequestLimitExceededBuilder() {
    RequestLimitExceeded._init(this);
  }

  RequestLimitExceededBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestLimitExceeded other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestLimitExceeded;
  }

  @override
  void update(void Function(RequestLimitExceededBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestLimitExceeded build() => _build();

  _$RequestLimitExceeded _build() {
    final _$result = _$v ??
        new _$RequestLimitExceeded._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
