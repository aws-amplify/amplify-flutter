// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.internal_server_error_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InternalServerErrorException extends InternalServerErrorException {
  @override
  final String? message;
  @override
  final String? requestId;
  @override
  final Map<String, String>? headers;

  factory _$InternalServerErrorException(
          [void Function(InternalServerErrorExceptionBuilder)? updates]) =>
      (new InternalServerErrorExceptionBuilder()..update(updates))._build();

  _$InternalServerErrorException._({this.message, this.requestId, this.headers})
      : super._();

  @override
  InternalServerErrorException rebuild(
          void Function(InternalServerErrorExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InternalServerErrorExceptionBuilder toBuilder() =>
      new InternalServerErrorExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InternalServerErrorException &&
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

class InternalServerErrorExceptionBuilder
    implements
        Builder<InternalServerErrorException,
            InternalServerErrorExceptionBuilder> {
  _$InternalServerErrorException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InternalServerErrorExceptionBuilder() {
    InternalServerErrorException._init(this);
  }

  InternalServerErrorExceptionBuilder get _$this {
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
  void replace(InternalServerErrorException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InternalServerErrorException;
  }

  @override
  void update(void Function(InternalServerErrorExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InternalServerErrorException build() => _build();

  _$InternalServerErrorException _build() {
    final _$result = _$v ??
        new _$InternalServerErrorException._(
            message: message, requestId: requestId, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
