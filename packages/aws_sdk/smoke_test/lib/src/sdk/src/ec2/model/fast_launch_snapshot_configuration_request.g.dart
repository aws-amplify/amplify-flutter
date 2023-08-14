// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fast_launch_snapshot_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FastLaunchSnapshotConfigurationRequest
    extends FastLaunchSnapshotConfigurationRequest {
  @override
  final int targetResourceCount;

  factory _$FastLaunchSnapshotConfigurationRequest(
          [void Function(FastLaunchSnapshotConfigurationRequestBuilder)?
              updates]) =>
      (new FastLaunchSnapshotConfigurationRequestBuilder()..update(updates))
          ._build();

  _$FastLaunchSnapshotConfigurationRequest._(
      {required this.targetResourceCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(targetResourceCount,
        r'FastLaunchSnapshotConfigurationRequest', 'targetResourceCount');
  }

  @override
  FastLaunchSnapshotConfigurationRequest rebuild(
          void Function(FastLaunchSnapshotConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FastLaunchSnapshotConfigurationRequestBuilder toBuilder() =>
      new FastLaunchSnapshotConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FastLaunchSnapshotConfigurationRequest &&
        targetResourceCount == other.targetResourceCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, targetResourceCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FastLaunchSnapshotConfigurationRequestBuilder
    implements
        Builder<FastLaunchSnapshotConfigurationRequest,
            FastLaunchSnapshotConfigurationRequestBuilder> {
  _$FastLaunchSnapshotConfigurationRequest? _$v;

  int? _targetResourceCount;
  int? get targetResourceCount => _$this._targetResourceCount;
  set targetResourceCount(int? targetResourceCount) =>
      _$this._targetResourceCount = targetResourceCount;

  FastLaunchSnapshotConfigurationRequestBuilder() {
    FastLaunchSnapshotConfigurationRequest._init(this);
  }

  FastLaunchSnapshotConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targetResourceCount = $v.targetResourceCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FastLaunchSnapshotConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FastLaunchSnapshotConfigurationRequest;
  }

  @override
  void update(
      void Function(FastLaunchSnapshotConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FastLaunchSnapshotConfigurationRequest build() => _build();

  _$FastLaunchSnapshotConfigurationRequest _build() {
    final _$result = _$v ??
        new _$FastLaunchSnapshotConfigurationRequest._(
            targetResourceCount: BuiltValueNullFieldError.checkNotNull(
                targetResourceCount,
                r'FastLaunchSnapshotConfigurationRequest',
                'targetResourceCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
