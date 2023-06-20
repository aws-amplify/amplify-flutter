// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_not_found_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportNotFoundException extends ImportNotFoundException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ImportNotFoundException(
          [void Function(ImportNotFoundExceptionBuilder)? updates]) =>
      (new ImportNotFoundExceptionBuilder()..update(updates))._build();

  _$ImportNotFoundException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  ImportNotFoundException rebuild(
          void Function(ImportNotFoundExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportNotFoundExceptionBuilder toBuilder() =>
      new ImportNotFoundExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportNotFoundException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportNotFoundExceptionBuilder
    implements
        Builder<ImportNotFoundException, ImportNotFoundExceptionBuilder> {
  _$ImportNotFoundException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ImportNotFoundExceptionBuilder() {
    ImportNotFoundException._init(this);
  }

  ImportNotFoundExceptionBuilder get _$this {
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
  void replace(ImportNotFoundException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportNotFoundException;
  }

  @override
  void update(void Function(ImportNotFoundExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportNotFoundException build() => _build();

  _$ImportNotFoundException _build() {
    final _$result = _$v ??
        new _$ImportNotFoundException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
