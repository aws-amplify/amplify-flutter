// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StateReason extends StateReason {
  @override
  final String? code;
  @override
  final String? message;

  factory _$StateReason([void Function(StateReasonBuilder)? updates]) =>
      (new StateReasonBuilder()..update(updates))._build();

  _$StateReason._({this.code, this.message}) : super._();

  @override
  StateReason rebuild(void Function(StateReasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StateReasonBuilder toBuilder() => new StateReasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StateReason &&
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

class StateReasonBuilder implements Builder<StateReason, StateReasonBuilder> {
  _$StateReason? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  StateReasonBuilder();

  StateReasonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StateReason other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StateReason;
  }

  @override
  void update(void Function(StateReasonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StateReason build() => _build();

  _$StateReason _build() {
    final _$result = _$v ?? new _$StateReason._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
