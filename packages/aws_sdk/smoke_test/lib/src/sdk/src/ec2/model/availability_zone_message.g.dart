// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_zone_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailabilityZoneMessage extends AvailabilityZoneMessage {
  @override
  final String? message;

  factory _$AvailabilityZoneMessage(
          [void Function(AvailabilityZoneMessageBuilder)? updates]) =>
      (new AvailabilityZoneMessageBuilder()..update(updates))._build();

  _$AvailabilityZoneMessage._({this.message}) : super._();

  @override
  AvailabilityZoneMessage rebuild(
          void Function(AvailabilityZoneMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvailabilityZoneMessageBuilder toBuilder() =>
      new AvailabilityZoneMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailabilityZoneMessage && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AvailabilityZoneMessageBuilder
    implements
        Builder<AvailabilityZoneMessage, AvailabilityZoneMessageBuilder> {
  _$AvailabilityZoneMessage? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AvailabilityZoneMessageBuilder();

  AvailabilityZoneMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailabilityZoneMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AvailabilityZoneMessage;
  }

  @override
  void update(void Function(AvailabilityZoneMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailabilityZoneMessage build() => _build();

  _$AvailabilityZoneMessage _build() {
    final _$result = _$v ?? new _$AvailabilityZoneMessage._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
