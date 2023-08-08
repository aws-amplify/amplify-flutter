// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_code_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomCodeError extends CustomCodeError {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$CustomCodeError([void Function(CustomCodeErrorBuilder)? updates]) =>
      (new CustomCodeErrorBuilder()..update(updates))._build();

  _$CustomCodeError._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  CustomCodeError rebuild(void Function(CustomCodeErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomCodeErrorBuilder toBuilder() =>
      new CustomCodeErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomCodeError && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CustomCodeErrorBuilder
    implements Builder<CustomCodeError, CustomCodeErrorBuilder> {
  _$CustomCodeError? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  CustomCodeErrorBuilder();

  CustomCodeErrorBuilder get _$this {
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
  void replace(CustomCodeError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomCodeError;
  }

  @override
  void update(void Function(CustomCodeErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomCodeError build() => _build();

  _$CustomCodeError _build() {
    final _$result = _$v ??
        new _$CustomCodeError._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
