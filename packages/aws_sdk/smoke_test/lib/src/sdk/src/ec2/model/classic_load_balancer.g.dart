// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_load_balancer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClassicLoadBalancer extends ClassicLoadBalancer {
  @override
  final String? name;

  factory _$ClassicLoadBalancer(
          [void Function(ClassicLoadBalancerBuilder)? updates]) =>
      (new ClassicLoadBalancerBuilder()..update(updates))._build();

  _$ClassicLoadBalancer._({this.name}) : super._();

  @override
  ClassicLoadBalancer rebuild(
          void Function(ClassicLoadBalancerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassicLoadBalancerBuilder toBuilder() =>
      new ClassicLoadBalancerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassicLoadBalancer && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClassicLoadBalancerBuilder
    implements Builder<ClassicLoadBalancer, ClassicLoadBalancerBuilder> {
  _$ClassicLoadBalancer? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ClassicLoadBalancerBuilder();

  ClassicLoadBalancerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassicLoadBalancer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClassicLoadBalancer;
  }

  @override
  void update(void Function(ClassicLoadBalancerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClassicLoadBalancer build() => _build();

  _$ClassicLoadBalancer _build() {
    final _$result = _$v ?? new _$ClassicLoadBalancer._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
