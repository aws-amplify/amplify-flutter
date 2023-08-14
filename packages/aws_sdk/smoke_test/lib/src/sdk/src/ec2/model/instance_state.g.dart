// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceState extends InstanceState {
  @override
  final int code;
  @override
  final InstanceStateName? name;

  factory _$InstanceState([void Function(InstanceStateBuilder)? updates]) =>
      (new InstanceStateBuilder()..update(updates))._build();

  _$InstanceState._({required this.code, this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(code, r'InstanceState', 'code');
  }

  @override
  InstanceState rebuild(void Function(InstanceStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceStateBuilder toBuilder() => new InstanceStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceState && code == other.code && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceStateBuilder
    implements Builder<InstanceState, InstanceStateBuilder> {
  _$InstanceState? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  InstanceStateName? _name;
  InstanceStateName? get name => _$this._name;
  set name(InstanceStateName? name) => _$this._name = name;

  InstanceStateBuilder() {
    InstanceState._init(this);
  }

  InstanceStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceState;
  }

  @override
  void update(void Function(InstanceStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceState build() => _build();

  _$InstanceState _build() {
    final _$result = _$v ??
        new _$InstanceState._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'InstanceState', 'code'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
