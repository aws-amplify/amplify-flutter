// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.api_gateway.model.unauthorized_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnauthorizedException extends UnauthorizedException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$UnauthorizedException(
          [void Function(UnauthorizedExceptionBuilder)? updates]) =>
      (new UnauthorizedExceptionBuilder()..update(updates))._build();

  _$UnauthorizedException._({this.message, this.headers}) : super._();

  @override
  UnauthorizedException rebuild(
          void Function(UnauthorizedExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnauthorizedExceptionBuilder toBuilder() =>
      new UnauthorizedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnauthorizedException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnauthorizedExceptionBuilder
    implements Builder<UnauthorizedException, UnauthorizedExceptionBuilder> {
  _$UnauthorizedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  UnauthorizedExceptionBuilder() {
    UnauthorizedException._init(this);
  }

  UnauthorizedExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnauthorizedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnauthorizedException;
  }

  @override
  void update(void Function(UnauthorizedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnauthorizedException build() => _build();

  _$UnauthorizedException _build() {
    final _$result = _$v ??
        new _$UnauthorizedException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
