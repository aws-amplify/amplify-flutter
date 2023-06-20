// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packed_policy_too_large_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PackedPolicyTooLargeException extends PackedPolicyTooLargeException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$PackedPolicyTooLargeException(
          [void Function(PackedPolicyTooLargeExceptionBuilder)? updates]) =>
      (new PackedPolicyTooLargeExceptionBuilder()..update(updates))._build();

  _$PackedPolicyTooLargeException._({this.message, this.headers}) : super._();

  @override
  PackedPolicyTooLargeException rebuild(
          void Function(PackedPolicyTooLargeExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackedPolicyTooLargeExceptionBuilder toBuilder() =>
      new PackedPolicyTooLargeExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackedPolicyTooLargeException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PackedPolicyTooLargeExceptionBuilder
    implements
        Builder<PackedPolicyTooLargeException,
            PackedPolicyTooLargeExceptionBuilder> {
  _$PackedPolicyTooLargeException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  PackedPolicyTooLargeExceptionBuilder() {
    PackedPolicyTooLargeException._init(this);
  }

  PackedPolicyTooLargeExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackedPolicyTooLargeException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PackedPolicyTooLargeException;
  }

  @override
  void update(void Function(PackedPolicyTooLargeExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PackedPolicyTooLargeException build() => _build();

  _$PackedPolicyTooLargeException _build() {
    final _$result = _$v ??
        new _$PackedPolicyTooLargeException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
