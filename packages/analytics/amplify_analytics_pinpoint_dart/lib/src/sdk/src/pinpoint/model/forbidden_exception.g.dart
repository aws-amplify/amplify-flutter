// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.forbidden_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForbiddenException extends ForbiddenException {
  @override
  final String? message;
  @override
  final String? requestId;
  @override
  final Map<String, String>? headers;

  factory _$ForbiddenException(
          [void Function(ForbiddenExceptionBuilder)? updates]) =>
      (new ForbiddenExceptionBuilder()..update(updates))._build();

  _$ForbiddenException._({this.message, this.requestId, this.headers})
      : super._();

  @override
  ForbiddenException rebuild(
          void Function(ForbiddenExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForbiddenExceptionBuilder toBuilder() =>
      new ForbiddenExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForbiddenException &&
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

class ForbiddenExceptionBuilder
    implements Builder<ForbiddenException, ForbiddenExceptionBuilder> {
  _$ForbiddenException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ForbiddenExceptionBuilder() {
    ForbiddenException._init(this);
  }

  ForbiddenExceptionBuilder get _$this {
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
  void replace(ForbiddenException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForbiddenException;
  }

  @override
  void update(void Function(ForbiddenExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForbiddenException build() => _build();

  _$ForbiddenException _build() {
    final _$result = _$v ??
        new _$ForbiddenException._(
            message: message, requestId: requestId, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
