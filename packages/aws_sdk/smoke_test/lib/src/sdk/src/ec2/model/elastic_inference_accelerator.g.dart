// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elastic_inference_accelerator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ElasticInferenceAccelerator extends ElasticInferenceAccelerator {
  @override
  final String? type;
  @override
  final int count;

  factory _$ElasticInferenceAccelerator(
          [void Function(ElasticInferenceAcceleratorBuilder)? updates]) =>
      (new ElasticInferenceAcceleratorBuilder()..update(updates))._build();

  _$ElasticInferenceAccelerator._({this.type, required this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        count, r'ElasticInferenceAccelerator', 'count');
  }

  @override
  ElasticInferenceAccelerator rebuild(
          void Function(ElasticInferenceAcceleratorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ElasticInferenceAcceleratorBuilder toBuilder() =>
      new ElasticInferenceAcceleratorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ElasticInferenceAccelerator &&
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

class ElasticInferenceAcceleratorBuilder
    implements
        Builder<ElasticInferenceAccelerator,
            ElasticInferenceAcceleratorBuilder> {
  _$ElasticInferenceAccelerator? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ElasticInferenceAcceleratorBuilder() {
    ElasticInferenceAccelerator._init(this);
  }

  ElasticInferenceAcceleratorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ElasticInferenceAccelerator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ElasticInferenceAccelerator;
  }

  @override
  void update(void Function(ElasticInferenceAcceleratorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ElasticInferenceAccelerator build() => _build();

  _$ElasticInferenceAccelerator _build() {
    final _$result = _$v ??
        new _$ElasticInferenceAccelerator._(
            type: type,
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'ElasticInferenceAccelerator', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
