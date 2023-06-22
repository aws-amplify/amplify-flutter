// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'idempotent_parameter_mismatch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdempotentParameterMismatch extends IdempotentParameterMismatch {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$IdempotentParameterMismatch(
          [void Function(IdempotentParameterMismatchBuilder)? updates]) =>
      (new IdempotentParameterMismatchBuilder()..update(updates))._build();

  _$IdempotentParameterMismatch._({this.message, this.headers}) : super._();

  @override
  IdempotentParameterMismatch rebuild(
          void Function(IdempotentParameterMismatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdempotentParameterMismatchBuilder toBuilder() =>
      new IdempotentParameterMismatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdempotentParameterMismatch && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IdempotentParameterMismatchBuilder
    implements
        Builder<IdempotentParameterMismatch,
            IdempotentParameterMismatchBuilder> {
  _$IdempotentParameterMismatch? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  IdempotentParameterMismatchBuilder() {
    IdempotentParameterMismatch._init(this);
  }

  IdempotentParameterMismatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdempotentParameterMismatch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdempotentParameterMismatch;
  }

  @override
  void update(void Function(IdempotentParameterMismatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdempotentParameterMismatch build() => _build();

  _$IdempotentParameterMismatch _build() {
    final _$result = _$v ??
        new _$IdempotentParameterMismatch._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
