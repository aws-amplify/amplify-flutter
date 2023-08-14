// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elastic_gpu_specification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ElasticGpuSpecificationResponse
    extends ElasticGpuSpecificationResponse {
  @override
  final String? type;

  factory _$ElasticGpuSpecificationResponse(
          [void Function(ElasticGpuSpecificationResponseBuilder)? updates]) =>
      (new ElasticGpuSpecificationResponseBuilder()..update(updates))._build();

  _$ElasticGpuSpecificationResponse._({this.type}) : super._();

  @override
  ElasticGpuSpecificationResponse rebuild(
          void Function(ElasticGpuSpecificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ElasticGpuSpecificationResponseBuilder toBuilder() =>
      new ElasticGpuSpecificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ElasticGpuSpecificationResponse && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ElasticGpuSpecificationResponseBuilder
    implements
        Builder<ElasticGpuSpecificationResponse,
            ElasticGpuSpecificationResponseBuilder> {
  _$ElasticGpuSpecificationResponse? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ElasticGpuSpecificationResponseBuilder();

  ElasticGpuSpecificationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ElasticGpuSpecificationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ElasticGpuSpecificationResponse;
  }

  @override
  void update(void Function(ElasticGpuSpecificationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ElasticGpuSpecificationResponse build() => _build();

  _$ElasticGpuSpecificationResponse _build() {
    final _$result = _$v ?? new _$ElasticGpuSpecificationResponse._(type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
