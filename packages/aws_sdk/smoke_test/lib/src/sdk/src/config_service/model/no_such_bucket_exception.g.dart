// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.no_such_bucket_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchBucketException extends NoSuchBucketException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchBucketException(
          [void Function(NoSuchBucketExceptionBuilder)? updates]) =>
      (new NoSuchBucketExceptionBuilder()..update(updates))._build();

  _$NoSuchBucketException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  NoSuchBucketException rebuild(
          void Function(NoSuchBucketExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchBucketExceptionBuilder toBuilder() =>
      new NoSuchBucketExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchBucketException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NoSuchBucketExceptionBuilder
    implements Builder<NoSuchBucketException, NoSuchBucketExceptionBuilder> {
  _$NoSuchBucketException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchBucketExceptionBuilder() {
    NoSuchBucketException._init(this);
  }

  NoSuchBucketExceptionBuilder get _$this {
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
  void replace(NoSuchBucketException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchBucketException;
  }

  @override
  void update(void Function(NoSuchBucketExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchBucketException build() => _build();

  _$NoSuchBucketException _build() {
    final _$result = _$v ??
        new _$NoSuchBucketException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
