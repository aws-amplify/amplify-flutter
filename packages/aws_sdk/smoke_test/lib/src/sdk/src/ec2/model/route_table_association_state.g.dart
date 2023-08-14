// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_table_association_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RouteTableAssociationState extends RouteTableAssociationState {
  @override
  final RouteTableAssociationStateCode? state;
  @override
  final String? statusMessage;

  factory _$RouteTableAssociationState(
          [void Function(RouteTableAssociationStateBuilder)? updates]) =>
      (new RouteTableAssociationStateBuilder()..update(updates))._build();

  _$RouteTableAssociationState._({this.state, this.statusMessage}) : super._();

  @override
  RouteTableAssociationState rebuild(
          void Function(RouteTableAssociationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RouteTableAssociationStateBuilder toBuilder() =>
      new RouteTableAssociationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RouteTableAssociationState &&
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

class RouteTableAssociationStateBuilder
    implements
        Builder<RouteTableAssociationState, RouteTableAssociationStateBuilder> {
  _$RouteTableAssociationState? _$v;

  RouteTableAssociationStateCode? _state;
  RouteTableAssociationStateCode? get state => _$this._state;
  set state(RouteTableAssociationStateCode? state) => _$this._state = state;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  RouteTableAssociationStateBuilder();

  RouteTableAssociationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _statusMessage = $v.statusMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RouteTableAssociationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RouteTableAssociationState;
  }

  @override
  void update(void Function(RouteTableAssociationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RouteTableAssociationState build() => _build();

  _$RouteTableAssociationState _build() {
    final _$result = _$v ??
        new _$RouteTableAssociationState._(
            state: state, statusMessage: statusMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
