// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ptr_update_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PtrUpdateStatus extends PtrUpdateStatus {
  @override
  final String? value;
  @override
  final String? status;
  @override
  final String? reason;

  factory _$PtrUpdateStatus([void Function(PtrUpdateStatusBuilder)? updates]) =>
      (new PtrUpdateStatusBuilder()..update(updates))._build();

  _$PtrUpdateStatus._({this.value, this.status, this.reason}) : super._();

  @override
  PtrUpdateStatus rebuild(void Function(PtrUpdateStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PtrUpdateStatusBuilder toBuilder() =>
      new PtrUpdateStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PtrUpdateStatus &&
        value == other.value &&
        status == other.status &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PtrUpdateStatusBuilder
    implements Builder<PtrUpdateStatus, PtrUpdateStatusBuilder> {
  _$PtrUpdateStatus? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  PtrUpdateStatusBuilder();

  PtrUpdateStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _status = $v.status;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PtrUpdateStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PtrUpdateStatus;
  }

  @override
  void update(void Function(PtrUpdateStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PtrUpdateStatus build() => _build();

  _$PtrUpdateStatus _build() {
    final _$result = _$v ??
        new _$PtrUpdateStatus._(value: value, status: status, reason: reason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
