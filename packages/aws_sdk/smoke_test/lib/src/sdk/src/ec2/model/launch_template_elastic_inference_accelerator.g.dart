// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_elastic_inference_accelerator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateElasticInferenceAccelerator
    extends LaunchTemplateElasticInferenceAccelerator {
  @override
  final String? type;
  @override
  final int count;

  factory _$LaunchTemplateElasticInferenceAccelerator(
          [void Function(LaunchTemplateElasticInferenceAcceleratorBuilder)?
              updates]) =>
      (new LaunchTemplateElasticInferenceAcceleratorBuilder()..update(updates))
          ._build();

  _$LaunchTemplateElasticInferenceAccelerator._(
      {this.type, required this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        count, r'LaunchTemplateElasticInferenceAccelerator', 'count');
  }

  @override
  LaunchTemplateElasticInferenceAccelerator rebuild(
          void Function(LaunchTemplateElasticInferenceAcceleratorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateElasticInferenceAcceleratorBuilder toBuilder() =>
      new LaunchTemplateElasticInferenceAcceleratorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateElasticInferenceAccelerator &&
        type == other.type &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateElasticInferenceAcceleratorBuilder
    implements
        Builder<LaunchTemplateElasticInferenceAccelerator,
            LaunchTemplateElasticInferenceAcceleratorBuilder> {
  _$LaunchTemplateElasticInferenceAccelerator? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  LaunchTemplateElasticInferenceAcceleratorBuilder() {
    LaunchTemplateElasticInferenceAccelerator._init(this);
  }

  LaunchTemplateElasticInferenceAcceleratorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateElasticInferenceAccelerator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateElasticInferenceAccelerator;
  }

  @override
  void update(
      void Function(LaunchTemplateElasticInferenceAcceleratorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateElasticInferenceAccelerator build() => _build();

  _$LaunchTemplateElasticInferenceAccelerator _build() {
    final _$result = _$v ??
        new _$LaunchTemplateElasticInferenceAccelerator._(
            type: type,
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'LaunchTemplateElasticInferenceAccelerator', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
