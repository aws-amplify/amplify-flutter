// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsuccessful_item_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnsuccessfulItemError extends UnsuccessfulItemError {
  @override
  final String? code;
  @override
  final String? message;

  factory _$UnsuccessfulItemError(
          [void Function(UnsuccessfulItemErrorBuilder)? updates]) =>
      (new UnsuccessfulItemErrorBuilder()..update(updates))._build();

  _$UnsuccessfulItemError._({this.code, this.message}) : super._();

  @override
  UnsuccessfulItemError rebuild(
          void Function(UnsuccessfulItemErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnsuccessfulItemErrorBuilder toBuilder() =>
      new UnsuccessfulItemErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnsuccessfulItemError &&
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

class UnsuccessfulItemErrorBuilder
    implements Builder<UnsuccessfulItemError, UnsuccessfulItemErrorBuilder> {
  _$UnsuccessfulItemError? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  UnsuccessfulItemErrorBuilder();

  UnsuccessfulItemErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnsuccessfulItemError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnsuccessfulItemError;
  }

  @override
  void update(void Function(UnsuccessfulItemErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnsuccessfulItemError build() => _build();

  _$UnsuccessfulItemError _build() {
    final _$result =
        _$v ?? new _$UnsuccessfulItemError._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
