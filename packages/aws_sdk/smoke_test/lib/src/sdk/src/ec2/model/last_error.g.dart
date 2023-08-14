// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LastError extends LastError {
  @override
  final String? message;
  @override
  final String? code;

  factory _$LastError([void Function(LastErrorBuilder)? updates]) =>
      (new LastErrorBuilder()..update(updates))._build();

  _$LastError._({this.message, this.code}) : super._();

  @override
  LastError rebuild(void Function(LastErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LastErrorBuilder toBuilder() => new LastErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LastError && message == other.message && code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LastErrorBuilder implements Builder<LastError, LastErrorBuilder> {
  _$LastError? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  LastErrorBuilder();

  LastErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LastError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LastError;
  }

  @override
  void update(void Function(LastErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LastError build() => _build();

  _$LastError _build() {
    final _$result = _$v ?? new _$LastError._(message: message, code: code);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
