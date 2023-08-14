// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_load_balancers_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClassicLoadBalancersConfig extends ClassicLoadBalancersConfig {
  @override
  final _i2.BuiltList<ClassicLoadBalancer>? classicLoadBalancers;

  factory _$ClassicLoadBalancersConfig(
          [void Function(ClassicLoadBalancersConfigBuilder)? updates]) =>
      (new ClassicLoadBalancersConfigBuilder()..update(updates))._build();

  _$ClassicLoadBalancersConfig._({this.classicLoadBalancers}) : super._();

  @override
  ClassicLoadBalancersConfig rebuild(
          void Function(ClassicLoadBalancersConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassicLoadBalancersConfigBuilder toBuilder() =>
      new ClassicLoadBalancersConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassicLoadBalancersConfig &&
        classicLoadBalancers == other.classicLoadBalancers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, classicLoadBalancers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClassicLoadBalancersConfigBuilder
    implements
        Builder<ClassicLoadBalancersConfig, ClassicLoadBalancersConfigBuilder> {
  _$ClassicLoadBalancersConfig? _$v;

  _i2.ListBuilder<ClassicLoadBalancer>? _classicLoadBalancers;
  _i2.ListBuilder<ClassicLoadBalancer> get classicLoadBalancers =>
      _$this._classicLoadBalancers ??=
          new _i2.ListBuilder<ClassicLoadBalancer>();
  set classicLoadBalancers(
          _i2.ListBuilder<ClassicLoadBalancer>? classicLoadBalancers) =>
      _$this._classicLoadBalancers = classicLoadBalancers;

  ClassicLoadBalancersConfigBuilder();

  ClassicLoadBalancersConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _classicLoadBalancers = $v.classicLoadBalancers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassicLoadBalancersConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClassicLoadBalancersConfig;
  }

  @override
  void update(void Function(ClassicLoadBalancersConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClassicLoadBalancersConfig build() => _build();

  _$ClassicLoadBalancersConfig _build() {
    _$ClassicLoadBalancersConfig _$result;
    try {
      _$result = _$v ??
          new _$ClassicLoadBalancersConfig._(
              classicLoadBalancers: _classicLoadBalancers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'classicLoadBalancers';
        _classicLoadBalancers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClassicLoadBalancersConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
