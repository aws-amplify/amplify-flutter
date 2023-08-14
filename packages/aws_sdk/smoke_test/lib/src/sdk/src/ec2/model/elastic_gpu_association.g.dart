// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elastic_gpu_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ElasticGpuAssociation extends ElasticGpuAssociation {
  @override
  final String? elasticGpuId;
  @override
  final String? elasticGpuAssociationId;
  @override
  final String? elasticGpuAssociationState;
  @override
  final String? elasticGpuAssociationTime;

  factory _$ElasticGpuAssociation(
          [void Function(ElasticGpuAssociationBuilder)? updates]) =>
      (new ElasticGpuAssociationBuilder()..update(updates))._build();

  _$ElasticGpuAssociation._(
      {this.elasticGpuId,
      this.elasticGpuAssociationId,
      this.elasticGpuAssociationState,
      this.elasticGpuAssociationTime})
      : super._();

  @override
  ElasticGpuAssociation rebuild(
          void Function(ElasticGpuAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ElasticGpuAssociationBuilder toBuilder() =>
      new ElasticGpuAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ElasticGpuAssociation &&
        elasticGpuId == other.elasticGpuId &&
        elasticGpuAssociationId == other.elasticGpuAssociationId &&
        elasticGpuAssociationState == other.elasticGpuAssociationState &&
        elasticGpuAssociationTime == other.elasticGpuAssociationTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, elasticGpuId.hashCode);
    _$hash = $jc(_$hash, elasticGpuAssociationId.hashCode);
    _$hash = $jc(_$hash, elasticGpuAssociationState.hashCode);
    _$hash = $jc(_$hash, elasticGpuAssociationTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ElasticGpuAssociationBuilder
    implements Builder<ElasticGpuAssociation, ElasticGpuAssociationBuilder> {
  _$ElasticGpuAssociation? _$v;

  String? _elasticGpuId;
  String? get elasticGpuId => _$this._elasticGpuId;
  set elasticGpuId(String? elasticGpuId) => _$this._elasticGpuId = elasticGpuId;

  String? _elasticGpuAssociationId;
  String? get elasticGpuAssociationId => _$this._elasticGpuAssociationId;
  set elasticGpuAssociationId(String? elasticGpuAssociationId) =>
      _$this._elasticGpuAssociationId = elasticGpuAssociationId;

  String? _elasticGpuAssociationState;
  String? get elasticGpuAssociationState => _$this._elasticGpuAssociationState;
  set elasticGpuAssociationState(String? elasticGpuAssociationState) =>
      _$this._elasticGpuAssociationState = elasticGpuAssociationState;

  String? _elasticGpuAssociationTime;
  String? get elasticGpuAssociationTime => _$this._elasticGpuAssociationTime;
  set elasticGpuAssociationTime(String? elasticGpuAssociationTime) =>
      _$this._elasticGpuAssociationTime = elasticGpuAssociationTime;

  ElasticGpuAssociationBuilder();

  ElasticGpuAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _elasticGpuId = $v.elasticGpuId;
      _elasticGpuAssociationId = $v.elasticGpuAssociationId;
      _elasticGpuAssociationState = $v.elasticGpuAssociationState;
      _elasticGpuAssociationTime = $v.elasticGpuAssociationTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ElasticGpuAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ElasticGpuAssociation;
  }

  @override
  void update(void Function(ElasticGpuAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ElasticGpuAssociation build() => _build();

  _$ElasticGpuAssociation _build() {
    final _$result = _$v ??
        new _$ElasticGpuAssociation._(
            elasticGpuId: elasticGpuId,
            elasticGpuAssociationId: elasticGpuAssociationId,
            elasticGpuAssociationState: elasticGpuAssociationState,
            elasticGpuAssociationTime: elasticGpuAssociationTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
