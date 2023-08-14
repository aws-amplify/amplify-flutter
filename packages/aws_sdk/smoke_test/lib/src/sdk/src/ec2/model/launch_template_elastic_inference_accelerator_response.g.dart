// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_elastic_inference_accelerator_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateElasticInferenceAcceleratorResponse
    extends LaunchTemplateElasticInferenceAcceleratorResponse {
  @override
  final String? type;
  @override
  final int count;

  factory _$LaunchTemplateElasticInferenceAcceleratorResponse(
          [void Function(
                  LaunchTemplateElasticInferenceAcceleratorResponseBuilder)?
              updates]) =>
      (new LaunchTemplateElasticInferenceAcceleratorResponseBuilder()
            ..update(updates))
          ._build();

  _$LaunchTemplateElasticInferenceAcceleratorResponse._(
      {this.type, required this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        count, r'LaunchTemplateElasticInferenceAcceleratorResponse', 'count');
  }

  @override
  LaunchTemplateElasticInferenceAcceleratorResponse rebuild(
          void Function(
                  LaunchTemplateElasticInferenceAcceleratorResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateElasticInferenceAcceleratorResponseBuilder toBuilder() =>
      new LaunchTemplateElasticInferenceAcceleratorResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateElasticInferenceAcceleratorResponse &&
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

class LaunchTemplateElasticInferenceAcceleratorResponseBuilder
    implements
        Builder<LaunchTemplateElasticInferenceAcceleratorResponse,
            LaunchTemplateElasticInferenceAcceleratorResponseBuilder> {
  _$LaunchTemplateElasticInferenceAcceleratorResponse? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  LaunchTemplateElasticInferenceAcceleratorResponseBuilder() {
    LaunchTemplateElasticInferenceAcceleratorResponse._init(this);
  }

  LaunchTemplateElasticInferenceAcceleratorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateElasticInferenceAcceleratorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateElasticInferenceAcceleratorResponse;
  }

  @override
  void update(
      void Function(LaunchTemplateElasticInferenceAcceleratorResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateElasticInferenceAcceleratorResponse build() => _build();

  _$LaunchTemplateElasticInferenceAcceleratorResponse _build() {
    final _$result = _$v ??
        new _$LaunchTemplateElasticInferenceAcceleratorResponse._(
            type: type,
            count: BuiltValueNullFieldError.checkNotNull(count,
                r'LaunchTemplateElasticInferenceAcceleratorResponse', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
