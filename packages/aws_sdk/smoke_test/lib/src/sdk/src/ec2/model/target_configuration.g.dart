// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TargetConfiguration extends TargetConfiguration {
  @override
  final int instanceCount;
  @override
  final String? offeringId;

  factory _$TargetConfiguration(
          [void Function(TargetConfigurationBuilder)? updates]) =>
      (new TargetConfigurationBuilder()..update(updates))._build();

  _$TargetConfiguration._({required this.instanceCount, this.offeringId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceCount, r'TargetConfiguration', 'instanceCount');
  }

  @override
  TargetConfiguration rebuild(
          void Function(TargetConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TargetConfigurationBuilder toBuilder() =>
      new TargetConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TargetConfiguration &&
        instanceCount == other.instanceCount &&
        offeringId == other.offeringId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, offeringId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TargetConfigurationBuilder
    implements Builder<TargetConfiguration, TargetConfigurationBuilder> {
  _$TargetConfiguration? _$v;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  String? _offeringId;
  String? get offeringId => _$this._offeringId;
  set offeringId(String? offeringId) => _$this._offeringId = offeringId;

  TargetConfigurationBuilder() {
    TargetConfiguration._init(this);
  }

  TargetConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceCount = $v.instanceCount;
      _offeringId = $v.offeringId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TargetConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TargetConfiguration;
  }

  @override
  void update(void Function(TargetConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TargetConfiguration build() => _build();

  _$TargetConfiguration _build() {
    final _$result = _$v ??
        new _$TargetConfiguration._(
            instanceCount: BuiltValueNullFieldError.checkNotNull(
                instanceCount, r'TargetConfiguration', 'instanceCount'),
            offeringId: offeringId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
