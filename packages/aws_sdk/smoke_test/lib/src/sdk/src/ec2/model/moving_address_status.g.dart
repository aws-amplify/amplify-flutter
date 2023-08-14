// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moving_address_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovingAddressStatus extends MovingAddressStatus {
  @override
  final MoveStatus? moveStatus;
  @override
  final String? publicIp;

  factory _$MovingAddressStatus(
          [void Function(MovingAddressStatusBuilder)? updates]) =>
      (new MovingAddressStatusBuilder()..update(updates))._build();

  _$MovingAddressStatus._({this.moveStatus, this.publicIp}) : super._();

  @override
  MovingAddressStatus rebuild(
          void Function(MovingAddressStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovingAddressStatusBuilder toBuilder() =>
      new MovingAddressStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovingAddressStatus &&
        moveStatus == other.moveStatus &&
        publicIp == other.publicIp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, moveStatus.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MovingAddressStatusBuilder
    implements Builder<MovingAddressStatus, MovingAddressStatusBuilder> {
  _$MovingAddressStatus? _$v;

  MoveStatus? _moveStatus;
  MoveStatus? get moveStatus => _$this._moveStatus;
  set moveStatus(MoveStatus? moveStatus) => _$this._moveStatus = moveStatus;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  MovingAddressStatusBuilder();

  MovingAddressStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _moveStatus = $v.moveStatus;
      _publicIp = $v.publicIp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovingAddressStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovingAddressStatus;
  }

  @override
  void update(void Function(MovingAddressStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovingAddressStatus build() => _build();

  _$MovingAddressStatus _build() {
    final _$result = _$v ??
        new _$MovingAddressStatus._(moveStatus: moveStatus, publicIp: publicIp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
