// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unmodifiable_entity_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnmodifiableEntityException extends UnmodifiableEntityException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$UnmodifiableEntityException(
          [void Function(UnmodifiableEntityExceptionBuilder)? updates]) =>
      (new UnmodifiableEntityExceptionBuilder()..update(updates))._build();

  _$UnmodifiableEntityException._({this.message, this.headers}) : super._();

  @override
  UnmodifiableEntityException rebuild(
          void Function(UnmodifiableEntityExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnmodifiableEntityExceptionBuilder toBuilder() =>
      new UnmodifiableEntityExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnmodifiableEntityException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnmodifiableEntityExceptionBuilder
    implements
        Builder<UnmodifiableEntityException,
            UnmodifiableEntityExceptionBuilder> {
  _$UnmodifiableEntityException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  UnmodifiableEntityExceptionBuilder() {
    UnmodifiableEntityException._init(this);
  }

  UnmodifiableEntityExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnmodifiableEntityException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnmodifiableEntityException;
  }

  @override
  void update(void Function(UnmodifiableEntityExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnmodifiableEntityException build() => _build();

  _$UnmodifiableEntityException _build() {
    final _$result = _$v ??
        new _$UnmodifiableEntityException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
