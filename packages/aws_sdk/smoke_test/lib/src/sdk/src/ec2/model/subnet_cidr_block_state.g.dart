// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subnet_cidr_block_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubnetCidrBlockState extends SubnetCidrBlockState {
  @override
  final SubnetCidrBlockStateCode? state;
  @override
  final String? statusMessage;

  factory _$SubnetCidrBlockState(
          [void Function(SubnetCidrBlockStateBuilder)? updates]) =>
      (new SubnetCidrBlockStateBuilder()..update(updates))._build();

  _$SubnetCidrBlockState._({this.state, this.statusMessage}) : super._();

  @override
  SubnetCidrBlockState rebuild(
          void Function(SubnetCidrBlockStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubnetCidrBlockStateBuilder toBuilder() =>
      new SubnetCidrBlockStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubnetCidrBlockState &&
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

class SubnetCidrBlockStateBuilder
    implements Builder<SubnetCidrBlockState, SubnetCidrBlockStateBuilder> {
  _$SubnetCidrBlockState? _$v;

  SubnetCidrBlockStateCode? _state;
  SubnetCidrBlockStateCode? get state => _$this._state;
  set state(SubnetCidrBlockStateCode? state) => _$this._state = state;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  SubnetCidrBlockStateBuilder();

  SubnetCidrBlockStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _statusMessage = $v.statusMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubnetCidrBlockState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubnetCidrBlockState;
  }

  @override
  void update(void Function(SubnetCidrBlockStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubnetCidrBlockState build() => _build();

  _$SubnetCidrBlockState _build() {
    final _$result = _$v ??
        new _$SubnetCidrBlockState._(
            state: state, statusMessage: statusMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
