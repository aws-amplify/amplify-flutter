// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.internal_server_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InternalServerError extends InternalServerError {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InternalServerError(
          [void Function(InternalServerErrorBuilder)? updates]) =>
      (new InternalServerErrorBuilder()..update(updates))._build();

  _$InternalServerError._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InternalServerError rebuild(
          void Function(InternalServerErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InternalServerErrorBuilder toBuilder() =>
      new InternalServerErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InternalServerError && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InternalServerErrorBuilder
    implements Builder<InternalServerError, InternalServerErrorBuilder> {
  _$InternalServerError? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InternalServerErrorBuilder() {
    InternalServerError._init(this);
  }

  InternalServerErrorBuilder get _$this {
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
  void replace(InternalServerError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InternalServerError;
  }

  @override
  void update(void Function(InternalServerErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InternalServerError build() => _build();

  _$InternalServerError _build() {
    final _$result = _$v ??
        new _$InternalServerError._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
