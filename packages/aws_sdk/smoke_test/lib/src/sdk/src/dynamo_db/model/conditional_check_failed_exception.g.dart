// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.conditional_check_failed_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConditionalCheckFailedException
    extends ConditionalCheckFailedException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ConditionalCheckFailedException(
          [void Function(ConditionalCheckFailedExceptionBuilder)? updates]) =>
      (new ConditionalCheckFailedExceptionBuilder()..update(updates))._build();

  _$ConditionalCheckFailedException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  ConditionalCheckFailedException rebuild(
          void Function(ConditionalCheckFailedExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConditionalCheckFailedExceptionBuilder toBuilder() =>
      new ConditionalCheckFailedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConditionalCheckFailedException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConditionalCheckFailedExceptionBuilder
    implements
        Builder<ConditionalCheckFailedException,
            ConditionalCheckFailedExceptionBuilder> {
  _$ConditionalCheckFailedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ConditionalCheckFailedExceptionBuilder() {
    ConditionalCheckFailedException._init(this);
  }

  ConditionalCheckFailedExceptionBuilder get _$this {
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
  void replace(ConditionalCheckFailedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConditionalCheckFailedException;
  }

  @override
  void update(void Function(ConditionalCheckFailedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConditionalCheckFailedException build() => _build();

  _$ConditionalCheckFailedException _build() {
    final _$result = _$v ??
        new _$ConditionalCheckFailedException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
