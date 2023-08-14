// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elastic_gpus.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ElasticGpus extends ElasticGpus {
  @override
  final String? elasticGpuId;
  @override
  final String? availabilityZone;
  @override
  final String? elasticGpuType;
  @override
  final ElasticGpuHealth? elasticGpuHealth;
  @override
  final ElasticGpuState? elasticGpuState;
  @override
  final String? instanceId;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$ElasticGpus([void Function(ElasticGpusBuilder)? updates]) =>
      (new ElasticGpusBuilder()..update(updates))._build();

  _$ElasticGpus._(
      {this.elasticGpuId,
      this.availabilityZone,
      this.elasticGpuType,
      this.elasticGpuHealth,
      this.elasticGpuState,
      this.instanceId,
      this.tags})
      : super._();

  @override
  ElasticGpus rebuild(void Function(ElasticGpusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ElasticGpusBuilder toBuilder() => new ElasticGpusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ElasticGpus &&
        elasticGpuId == other.elasticGpuId &&
        availabilityZone == other.availabilityZone &&
        elasticGpuType == other.elasticGpuType &&
        elasticGpuHealth == other.elasticGpuHealth &&
        elasticGpuState == other.elasticGpuState &&
        instanceId == other.instanceId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, elasticGpuId.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, elasticGpuType.hashCode);
    _$hash = $jc(_$hash, elasticGpuHealth.hashCode);
    _$hash = $jc(_$hash, elasticGpuState.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ElasticGpusBuilder implements Builder<ElasticGpus, ElasticGpusBuilder> {
  _$ElasticGpus? _$v;

  String? _elasticGpuId;
  String? get elasticGpuId => _$this._elasticGpuId;
  set elasticGpuId(String? elasticGpuId) => _$this._elasticGpuId = elasticGpuId;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _elasticGpuType;
  String? get elasticGpuType => _$this._elasticGpuType;
  set elasticGpuType(String? elasticGpuType) =>
      _$this._elasticGpuType = elasticGpuType;

  ElasticGpuHealthBuilder? _elasticGpuHealth;
  ElasticGpuHealthBuilder get elasticGpuHealth =>
      _$this._elasticGpuHealth ??= new ElasticGpuHealthBuilder();
  set elasticGpuHealth(ElasticGpuHealthBuilder? elasticGpuHealth) =>
      _$this._elasticGpuHealth = elasticGpuHealth;

  ElasticGpuState? _elasticGpuState;
  ElasticGpuState? get elasticGpuState => _$this._elasticGpuState;
  set elasticGpuState(ElasticGpuState? elasticGpuState) =>
      _$this._elasticGpuState = elasticGpuState;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  ElasticGpusBuilder();

  ElasticGpusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _elasticGpuId = $v.elasticGpuId;
      _availabilityZone = $v.availabilityZone;
      _elasticGpuType = $v.elasticGpuType;
      _elasticGpuHealth = $v.elasticGpuHealth?.toBuilder();
      _elasticGpuState = $v.elasticGpuState;
      _instanceId = $v.instanceId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ElasticGpus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ElasticGpus;
  }

  @override
  void update(void Function(ElasticGpusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ElasticGpus build() => _build();

  _$ElasticGpus _build() {
    _$ElasticGpus _$result;
    try {
      _$result = _$v ??
          new _$ElasticGpus._(
              elasticGpuId: elasticGpuId,
              availabilityZone: availabilityZone,
              elasticGpuType: elasticGpuType,
              elasticGpuHealth: _elasticGpuHealth?.build(),
              elasticGpuState: elasticGpuState,
              instanceId: instanceId,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'elasticGpuHealth';
        _elasticGpuHealth?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ElasticGpus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
