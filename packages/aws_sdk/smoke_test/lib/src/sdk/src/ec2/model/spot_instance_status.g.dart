// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_instance_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotInstanceStatus extends SpotInstanceStatus {
  @override
  final String? code;
  @override
  final String? message;
  @override
  final DateTime? updateTime;

  factory _$SpotInstanceStatus(
          [void Function(SpotInstanceStatusBuilder)? updates]) =>
      (new SpotInstanceStatusBuilder()..update(updates))._build();

  _$SpotInstanceStatus._({this.code, this.message, this.updateTime})
      : super._();

  @override
  SpotInstanceStatus rebuild(
          void Function(SpotInstanceStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotInstanceStatusBuilder toBuilder() =>
      new SpotInstanceStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotInstanceStatus &&
        code == other.code &&
        message == other.message &&
        updateTime == other.updateTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, updateTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotInstanceStatusBuilder
    implements Builder<SpotInstanceStatus, SpotInstanceStatusBuilder> {
  _$SpotInstanceStatus? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _updateTime;
  DateTime? get updateTime => _$this._updateTime;
  set updateTime(DateTime? updateTime) => _$this._updateTime = updateTime;

  SpotInstanceStatusBuilder();

  SpotInstanceStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _updateTime = $v.updateTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotInstanceStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotInstanceStatus;
  }

  @override
  void update(void Function(SpotInstanceStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotInstanceStatus build() => _build();

  _$SpotInstanceStatus _build() {
    final _$result = _$v ??
        new _$SpotInstanceStatus._(
            code: code, message: message, updateTime: updateTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
