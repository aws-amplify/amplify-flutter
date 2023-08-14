// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpc_peering_connection_state_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcPeeringConnectionStateReason
    extends VpcPeeringConnectionStateReason {
  @override
  final VpcPeeringConnectionStateReasonCode? code;
  @override
  final String? message;

  factory _$VpcPeeringConnectionStateReason(
          [void Function(VpcPeeringConnectionStateReasonBuilder)? updates]) =>
      (new VpcPeeringConnectionStateReasonBuilder()..update(updates))._build();

  _$VpcPeeringConnectionStateReason._({this.code, this.message}) : super._();

  @override
  VpcPeeringConnectionStateReason rebuild(
          void Function(VpcPeeringConnectionStateReasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcPeeringConnectionStateReasonBuilder toBuilder() =>
      new VpcPeeringConnectionStateReasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcPeeringConnectionStateReason &&
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

class VpcPeeringConnectionStateReasonBuilder
    implements
        Builder<VpcPeeringConnectionStateReason,
            VpcPeeringConnectionStateReasonBuilder> {
  _$VpcPeeringConnectionStateReason? _$v;

  VpcPeeringConnectionStateReasonCode? _code;
  VpcPeeringConnectionStateReasonCode? get code => _$this._code;
  set code(VpcPeeringConnectionStateReasonCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  VpcPeeringConnectionStateReasonBuilder();

  VpcPeeringConnectionStateReasonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcPeeringConnectionStateReason other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcPeeringConnectionStateReason;
  }

  @override
  void update(void Function(VpcPeeringConnectionStateReasonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcPeeringConnectionStateReason build() => _build();

  _$VpcPeeringConnectionStateReason _build() {
    final _$result = _$v ??
        new _$VpcPeeringConnectionStateReason._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
