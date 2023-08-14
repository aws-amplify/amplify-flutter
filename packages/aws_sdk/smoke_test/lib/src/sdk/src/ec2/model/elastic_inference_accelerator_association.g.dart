// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elastic_inference_accelerator_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ElasticInferenceAcceleratorAssociation
    extends ElasticInferenceAcceleratorAssociation {
  @override
  final String? elasticInferenceAcceleratorArn;
  @override
  final String? elasticInferenceAcceleratorAssociationId;
  @override
  final String? elasticInferenceAcceleratorAssociationState;
  @override
  final DateTime? elasticInferenceAcceleratorAssociationTime;

  factory _$ElasticInferenceAcceleratorAssociation(
          [void Function(ElasticInferenceAcceleratorAssociationBuilder)?
              updates]) =>
      (new ElasticInferenceAcceleratorAssociationBuilder()..update(updates))
          ._build();

  _$ElasticInferenceAcceleratorAssociation._(
      {this.elasticInferenceAcceleratorArn,
      this.elasticInferenceAcceleratorAssociationId,
      this.elasticInferenceAcceleratorAssociationState,
      this.elasticInferenceAcceleratorAssociationTime})
      : super._();

  @override
  ElasticInferenceAcceleratorAssociation rebuild(
          void Function(ElasticInferenceAcceleratorAssociationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ElasticInferenceAcceleratorAssociationBuilder toBuilder() =>
      new ElasticInferenceAcceleratorAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ElasticInferenceAcceleratorAssociation &&
        elasticInferenceAcceleratorArn ==
            other.elasticInferenceAcceleratorArn &&
        elasticInferenceAcceleratorAssociationId ==
            other.elasticInferenceAcceleratorAssociationId &&
        elasticInferenceAcceleratorAssociationState ==
            other.elasticInferenceAcceleratorAssociationState &&
        elasticInferenceAcceleratorAssociationTime ==
            other.elasticInferenceAcceleratorAssociationTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, elasticInferenceAcceleratorArn.hashCode);
    _$hash = $jc(_$hash, elasticInferenceAcceleratorAssociationId.hashCode);
    _$hash = $jc(_$hash, elasticInferenceAcceleratorAssociationState.hashCode);
    _$hash = $jc(_$hash, elasticInferenceAcceleratorAssociationTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ElasticInferenceAcceleratorAssociationBuilder
    implements
        Builder<ElasticInferenceAcceleratorAssociation,
            ElasticInferenceAcceleratorAssociationBuilder> {
  _$ElasticInferenceAcceleratorAssociation? _$v;

  String? _elasticInferenceAcceleratorArn;
  String? get elasticInferenceAcceleratorArn =>
      _$this._elasticInferenceAcceleratorArn;
  set elasticInferenceAcceleratorArn(String? elasticInferenceAcceleratorArn) =>
      _$this._elasticInferenceAcceleratorArn = elasticInferenceAcceleratorArn;

  String? _elasticInferenceAcceleratorAssociationId;
  String? get elasticInferenceAcceleratorAssociationId =>
      _$this._elasticInferenceAcceleratorAssociationId;
  set elasticInferenceAcceleratorAssociationId(
          String? elasticInferenceAcceleratorAssociationId) =>
      _$this._elasticInferenceAcceleratorAssociationId =
          elasticInferenceAcceleratorAssociationId;

  String? _elasticInferenceAcceleratorAssociationState;
  String? get elasticInferenceAcceleratorAssociationState =>
      _$this._elasticInferenceAcceleratorAssociationState;
  set elasticInferenceAcceleratorAssociationState(
          String? elasticInferenceAcceleratorAssociationState) =>
      _$this._elasticInferenceAcceleratorAssociationState =
          elasticInferenceAcceleratorAssociationState;

  DateTime? _elasticInferenceAcceleratorAssociationTime;
  DateTime? get elasticInferenceAcceleratorAssociationTime =>
      _$this._elasticInferenceAcceleratorAssociationTime;
  set elasticInferenceAcceleratorAssociationTime(
          DateTime? elasticInferenceAcceleratorAssociationTime) =>
      _$this._elasticInferenceAcceleratorAssociationTime =
          elasticInferenceAcceleratorAssociationTime;

  ElasticInferenceAcceleratorAssociationBuilder();

  ElasticInferenceAcceleratorAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _elasticInferenceAcceleratorArn = $v.elasticInferenceAcceleratorArn;
      _elasticInferenceAcceleratorAssociationId =
          $v.elasticInferenceAcceleratorAssociationId;
      _elasticInferenceAcceleratorAssociationState =
          $v.elasticInferenceAcceleratorAssociationState;
      _elasticInferenceAcceleratorAssociationTime =
          $v.elasticInferenceAcceleratorAssociationTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ElasticInferenceAcceleratorAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ElasticInferenceAcceleratorAssociation;
  }

  @override
  void update(
      void Function(ElasticInferenceAcceleratorAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ElasticInferenceAcceleratorAssociation build() => _build();

  _$ElasticInferenceAcceleratorAssociation _build() {
    final _$result = _$v ??
        new _$ElasticInferenceAcceleratorAssociation._(
            elasticInferenceAcceleratorArn: elasticInferenceAcceleratorArn,
            elasticInferenceAcceleratorAssociationId:
                elasticInferenceAcceleratorAssociationId,
            elasticInferenceAcceleratorAssociationState:
                elasticInferenceAcceleratorAssociationState,
            elasticInferenceAcceleratorAssociationTime:
                elasticInferenceAcceleratorAssociationTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
