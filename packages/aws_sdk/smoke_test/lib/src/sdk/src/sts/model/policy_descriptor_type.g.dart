// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.policy_descriptor_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyDescriptorType extends PolicyDescriptorType {
  @override
  final String? arn;

  factory _$PolicyDescriptorType(
          [void Function(PolicyDescriptorTypeBuilder)? updates]) =>
      (new PolicyDescriptorTypeBuilder()..update(updates))._build();

  _$PolicyDescriptorType._({this.arn}) : super._();

  @override
  PolicyDescriptorType rebuild(
          void Function(PolicyDescriptorTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyDescriptorTypeBuilder toBuilder() =>
      new PolicyDescriptorTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyDescriptorType && arn == other.arn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PolicyDescriptorTypeBuilder
    implements Builder<PolicyDescriptorType, PolicyDescriptorTypeBuilder> {
  _$PolicyDescriptorType? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  PolicyDescriptorTypeBuilder() {
    PolicyDescriptorType._init(this);
  }

  PolicyDescriptorTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyDescriptorType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PolicyDescriptorType;
  }

  @override
  void update(void Function(PolicyDescriptorTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyDescriptorType build() => _build();

  _$PolicyDescriptorType _build() {
    final _$result = _$v ?? new _$PolicyDescriptorType._(arn: arn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
