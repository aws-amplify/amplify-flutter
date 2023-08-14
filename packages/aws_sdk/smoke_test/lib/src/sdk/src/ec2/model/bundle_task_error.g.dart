// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle_task_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BundleTaskError extends BundleTaskError {
  @override
  final String? code;
  @override
  final String? message;

  factory _$BundleTaskError([void Function(BundleTaskErrorBuilder)? updates]) =>
      (new BundleTaskErrorBuilder()..update(updates))._build();

  _$BundleTaskError._({this.code, this.message}) : super._();

  @override
  BundleTaskError rebuild(void Function(BundleTaskErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BundleTaskErrorBuilder toBuilder() =>
      new BundleTaskErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BundleTaskError &&
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

class BundleTaskErrorBuilder
    implements Builder<BundleTaskError, BundleTaskErrorBuilder> {
  _$BundleTaskError? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BundleTaskErrorBuilder();

  BundleTaskErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BundleTaskError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BundleTaskError;
  }

  @override
  void update(void Function(BundleTaskErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BundleTaskError build() => _build();

  _$BundleTaskError _build() {
    final _$result =
        _$v ?? new _$BundleTaskError._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
