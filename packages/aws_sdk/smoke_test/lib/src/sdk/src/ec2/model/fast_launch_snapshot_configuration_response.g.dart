// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fast_launch_snapshot_configuration_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FastLaunchSnapshotConfigurationResponse
    extends FastLaunchSnapshotConfigurationResponse {
  @override
  final int targetResourceCount;

  factory _$FastLaunchSnapshotConfigurationResponse(
          [void Function(FastLaunchSnapshotConfigurationResponseBuilder)?
              updates]) =>
      (new FastLaunchSnapshotConfigurationResponseBuilder()..update(updates))
          ._build();

  _$FastLaunchSnapshotConfigurationResponse._(
      {required this.targetResourceCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(targetResourceCount,
        r'FastLaunchSnapshotConfigurationResponse', 'targetResourceCount');
  }

  @override
  FastLaunchSnapshotConfigurationResponse rebuild(
          void Function(FastLaunchSnapshotConfigurationResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FastLaunchSnapshotConfigurationResponseBuilder toBuilder() =>
      new FastLaunchSnapshotConfigurationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FastLaunchSnapshotConfigurationResponse &&
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

class FastLaunchSnapshotConfigurationResponseBuilder
    implements
        Builder<FastLaunchSnapshotConfigurationResponse,
            FastLaunchSnapshotConfigurationResponseBuilder> {
  _$FastLaunchSnapshotConfigurationResponse? _$v;

  int? _targetResourceCount;
  int? get targetResourceCount => _$this._targetResourceCount;
  set targetResourceCount(int? targetResourceCount) =>
      _$this._targetResourceCount = targetResourceCount;

  FastLaunchSnapshotConfigurationResponseBuilder() {
    FastLaunchSnapshotConfigurationResponse._init(this);
  }

  FastLaunchSnapshotConfigurationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targetResourceCount = $v.targetResourceCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FastLaunchSnapshotConfigurationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FastLaunchSnapshotConfigurationResponse;
  }

  @override
  void update(
      void Function(FastLaunchSnapshotConfigurationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FastLaunchSnapshotConfigurationResponse build() => _build();

  _$FastLaunchSnapshotConfigurationResponse _build() {
    final _$result = _$v ??
        new _$FastLaunchSnapshotConfigurationResponse._(
            targetResourceCount: BuiltValueNullFieldError.checkNotNull(
                targetResourceCount,
                r'FastLaunchSnapshotConfigurationResponse',
                'targetResourceCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
