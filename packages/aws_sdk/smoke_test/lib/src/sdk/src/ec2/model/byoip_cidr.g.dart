// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'byoip_cidr.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ByoipCidr extends ByoipCidr {
  @override
  final String? cidr;
  @override
  final String? description;
  @override
  final String? statusMessage;
  @override
  final ByoipCidrState? state;

  factory _$ByoipCidr([void Function(ByoipCidrBuilder)? updates]) =>
      (new ByoipCidrBuilder()..update(updates))._build();

  _$ByoipCidr._({this.cidr, this.description, this.statusMessage, this.state})
      : super._();

  @override
  ByoipCidr rebuild(void Function(ByoipCidrBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ByoipCidrBuilder toBuilder() => new ByoipCidrBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ByoipCidr &&
        cidr == other.cidr &&
        description == other.description &&
        statusMessage == other.statusMessage &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ByoipCidrBuilder implements Builder<ByoipCidr, ByoipCidrBuilder> {
  _$ByoipCidr? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  ByoipCidrState? _state;
  ByoipCidrState? get state => _$this._state;
  set state(ByoipCidrState? state) => _$this._state = state;

  ByoipCidrBuilder();

  ByoipCidrBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _description = $v.description;
      _statusMessage = $v.statusMessage;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ByoipCidr other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ByoipCidr;
  }

  @override
  void update(void Function(ByoipCidrBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ByoipCidr build() => _build();

  _$ByoipCidr _build() {
    final _$result = _$v ??
        new _$ByoipCidr._(
            cidr: cidr,
            description: description,
            statusMessage: statusMessage,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
