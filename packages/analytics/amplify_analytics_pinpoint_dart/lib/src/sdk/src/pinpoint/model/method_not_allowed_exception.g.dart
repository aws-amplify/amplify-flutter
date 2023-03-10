// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.method_not_allowed_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MethodNotAllowedException extends MethodNotAllowedException {
  @override
  final String? message;
  @override
  final String? requestId;
  @override
  final Map<String, String>? headers;

  factory _$MethodNotAllowedException(
          [void Function(MethodNotAllowedExceptionBuilder)? updates]) =>
      (new MethodNotAllowedExceptionBuilder()..update(updates))._build();

  _$MethodNotAllowedException._({this.message, this.requestId, this.headers})
      : super._();

  @override
  MethodNotAllowedException rebuild(
          void Function(MethodNotAllowedExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MethodNotAllowedExceptionBuilder toBuilder() =>
      new MethodNotAllowedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MethodNotAllowedException &&
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

class MethodNotAllowedExceptionBuilder
    implements
        Builder<MethodNotAllowedException, MethodNotAllowedExceptionBuilder> {
  _$MethodNotAllowedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  MethodNotAllowedExceptionBuilder() {
    MethodNotAllowedException._init(this);
  }

  MethodNotAllowedExceptionBuilder get _$this {
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
  void replace(MethodNotAllowedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MethodNotAllowedException;
  }

  @override
  void update(void Function(MethodNotAllowedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MethodNotAllowedException build() => _build();

  _$MethodNotAllowedException _build() {
    final _$result = _$v ??
        new _$MethodNotAllowedException._(
            message: message, requestId: requestId, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
