// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elastic_gpu_health.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ElasticGpuHealth extends ElasticGpuHealth {
  @override
  final ElasticGpuStatus? status;

  factory _$ElasticGpuHealth(
          [void Function(ElasticGpuHealthBuilder)? updates]) =>
      (new ElasticGpuHealthBuilder()..update(updates))._build();

  _$ElasticGpuHealth._({this.status}) : super._();

  @override
  ElasticGpuHealth rebuild(void Function(ElasticGpuHealthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ElasticGpuHealthBuilder toBuilder() =>
      new ElasticGpuHealthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ElasticGpuHealth && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ElasticGpuHealthBuilder
    implements Builder<ElasticGpuHealth, ElasticGpuHealthBuilder> {
  _$ElasticGpuHealth? _$v;

  ElasticGpuStatus? _status;
  ElasticGpuStatus? get status => _$this._status;
  set status(ElasticGpuStatus? status) => _$this._status = status;

  ElasticGpuHealthBuilder();

  ElasticGpuHealthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ElasticGpuHealth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ElasticGpuHealth;
  }

  @override
  void update(void Function(ElasticGpuHealthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ElasticGpuHealth build() => _build();

  _$ElasticGpuHealth _build() {
    final _$result = _$v ?? new _$ElasticGpuHealth._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
