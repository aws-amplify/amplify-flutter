// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpc_cidr_block_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcCidrBlockState extends VpcCidrBlockState {
  @override
  final VpcCidrBlockStateCode? state;
  @override
  final String? statusMessage;

  factory _$VpcCidrBlockState(
          [void Function(VpcCidrBlockStateBuilder)? updates]) =>
      (new VpcCidrBlockStateBuilder()..update(updates))._build();

  _$VpcCidrBlockState._({this.state, this.statusMessage}) : super._();

  @override
  VpcCidrBlockState rebuild(void Function(VpcCidrBlockStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcCidrBlockStateBuilder toBuilder() =>
      new VpcCidrBlockStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcCidrBlockState &&
        state == other.state &&
        statusMessage == other.statusMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpcCidrBlockStateBuilder
    implements Builder<VpcCidrBlockState, VpcCidrBlockStateBuilder> {
  _$VpcCidrBlockState? _$v;

  VpcCidrBlockStateCode? _state;
  VpcCidrBlockStateCode? get state => _$this._state;
  set state(VpcCidrBlockStateCode? state) => _$this._state = state;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  VpcCidrBlockStateBuilder();

  VpcCidrBlockStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _statusMessage = $v.statusMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcCidrBlockState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcCidrBlockState;
  }

  @override
  void update(void Function(VpcCidrBlockStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcCidrBlockState build() => _build();

  _$VpcCidrBlockState _build() {
    final _$result = _$v ??
        new _$VpcCidrBlockState._(state: state, statusMessage: statusMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
