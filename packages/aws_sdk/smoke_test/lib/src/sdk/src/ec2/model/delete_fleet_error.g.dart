// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_fleet_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFleetError extends DeleteFleetError {
  @override
  final DeleteFleetErrorCode? code;
  @override
  final String? message;

  factory _$DeleteFleetError(
          [void Function(DeleteFleetErrorBuilder)? updates]) =>
      (new DeleteFleetErrorBuilder()..update(updates))._build();

  _$DeleteFleetError._({this.code, this.message}) : super._();

  @override
  DeleteFleetError rebuild(void Function(DeleteFleetErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFleetErrorBuilder toBuilder() =>
      new DeleteFleetErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFleetError &&
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

class DeleteFleetErrorBuilder
    implements Builder<DeleteFleetError, DeleteFleetErrorBuilder> {
  _$DeleteFleetError? _$v;

  DeleteFleetErrorCode? _code;
  DeleteFleetErrorCode? get code => _$this._code;
  set code(DeleteFleetErrorCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DeleteFleetErrorBuilder();

  DeleteFleetErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFleetError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteFleetError;
  }

  @override
  void update(void Function(DeleteFleetErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFleetError build() => _build();

  _$DeleteFleetError _build() {
    final _$result =
        _$v ?? new _$DeleteFleetError._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
