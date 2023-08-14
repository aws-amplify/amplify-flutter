// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elastic_gpu_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ElasticGpuSpecification extends ElasticGpuSpecification {
  @override
  final String? type;

  factory _$ElasticGpuSpecification(
          [void Function(ElasticGpuSpecificationBuilder)? updates]) =>
      (new ElasticGpuSpecificationBuilder()..update(updates))._build();

  _$ElasticGpuSpecification._({this.type}) : super._();

  @override
  ElasticGpuSpecification rebuild(
          void Function(ElasticGpuSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ElasticGpuSpecificationBuilder toBuilder() =>
      new ElasticGpuSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ElasticGpuSpecification && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ElasticGpuSpecificationBuilder
    implements
        Builder<ElasticGpuSpecification, ElasticGpuSpecificationBuilder> {
  _$ElasticGpuSpecification? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ElasticGpuSpecificationBuilder();

  ElasticGpuSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ElasticGpuSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ElasticGpuSpecification;
  }

  @override
  void update(void Function(ElasticGpuSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ElasticGpuSpecification build() => _build();

  _$ElasticGpuSpecification _build() {
    final _$result = _$v ?? new _$ElasticGpuSpecification._(type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
