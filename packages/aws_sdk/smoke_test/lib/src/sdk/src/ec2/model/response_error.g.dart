// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResponseError extends ResponseError {
  @override
  final LaunchTemplateErrorCode? code;
  @override
  final String? message;

  factory _$ResponseError([void Function(ResponseErrorBuilder)? updates]) =>
      (new ResponseErrorBuilder()..update(updates))._build();

  _$ResponseError._({this.code, this.message}) : super._();

  @override
  ResponseError rebuild(void Function(ResponseErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseErrorBuilder toBuilder() => new ResponseErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseError &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResponseErrorBuilder
    implements Builder<ResponseError, ResponseErrorBuilder> {
  _$ResponseError? _$v;

  LaunchTemplateErrorCode? _code;
  LaunchTemplateErrorCode? get code => _$this._code;
  set code(LaunchTemplateErrorCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ResponseErrorBuilder();

  ResponseErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseError;
  }

  @override
  void update(void Function(ResponseErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponseError build() => _build();

  _$ResponseError _build() {
    final _$result = _$v ?? new _$ResponseError._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
