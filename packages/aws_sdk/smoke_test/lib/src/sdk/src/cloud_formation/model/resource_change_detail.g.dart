// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.resource_change_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceChangeDetail extends ResourceChangeDetail {
  @override
  final _i2.ResourceTargetDefinition? target;
  @override
  final _i3.EvaluationType? evaluation;
  @override
  final _i4.ChangeSource? changeSource;
  @override
  final String? causingEntity;

  factory _$ResourceChangeDetail(
          [void Function(ResourceChangeDetailBuilder)? updates]) =>
      (new ResourceChangeDetailBuilder()..update(updates))._build();

  _$ResourceChangeDetail._(
      {this.target, this.evaluation, this.changeSource, this.causingEntity})
      : super._();

  @override
  ResourceChangeDetail rebuild(
          void Function(ResourceChangeDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceChangeDetailBuilder toBuilder() =>
      new ResourceChangeDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceChangeDetail &&
        target == other.target &&
        evaluation == other.evaluation &&
        changeSource == other.changeSource &&
        causingEntity == other.causingEntity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, evaluation.hashCode);
    _$hash = $jc(_$hash, changeSource.hashCode);
    _$hash = $jc(_$hash, causingEntity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceChangeDetailBuilder
    implements Builder<ResourceChangeDetail, ResourceChangeDetailBuilder> {
  _$ResourceChangeDetail? _$v;

  _i2.ResourceTargetDefinitionBuilder? _target;
  _i2.ResourceTargetDefinitionBuilder get target =>
      _$this._target ??= new _i2.ResourceTargetDefinitionBuilder();
  set target(_i2.ResourceTargetDefinitionBuilder? target) =>
      _$this._target = target;

  _i3.EvaluationType? _evaluation;
  _i3.EvaluationType? get evaluation => _$this._evaluation;
  set evaluation(_i3.EvaluationType? evaluation) =>
      _$this._evaluation = evaluation;

  _i4.ChangeSource? _changeSource;
  _i4.ChangeSource? get changeSource => _$this._changeSource;
  set changeSource(_i4.ChangeSource? changeSource) =>
      _$this._changeSource = changeSource;

  String? _causingEntity;
  String? get causingEntity => _$this._causingEntity;
  set causingEntity(String? causingEntity) =>
      _$this._causingEntity = causingEntity;

  ResourceChangeDetailBuilder() {
    ResourceChangeDetail._init(this);
  }

  ResourceChangeDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _target = $v.target?.toBuilder();
      _evaluation = $v.evaluation;
      _changeSource = $v.changeSource;
      _causingEntity = $v.causingEntity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceChangeDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceChangeDetail;
  }

  @override
  void update(void Function(ResourceChangeDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceChangeDetail build() => _build();

  _$ResourceChangeDetail _build() {
    _$ResourceChangeDetail _$result;
    try {
      _$result = _$v ??
          new _$ResourceChangeDetail._(
              target: _target?.build(),
              evaluation: evaluation,
              changeSource: changeSource,
              causingEntity: causingEntity);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'target';
        _target?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResourceChangeDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
