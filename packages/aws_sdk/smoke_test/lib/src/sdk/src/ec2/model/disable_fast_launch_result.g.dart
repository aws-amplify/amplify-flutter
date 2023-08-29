// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_fast_launch_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableFastLaunchResult extends DisableFastLaunchResult {
  @override
  final String? imageId;
  @override
  final FastLaunchResourceType? resourceType;
  @override
  final FastLaunchSnapshotConfigurationResponse? snapshotConfiguration;
  @override
  final FastLaunchLaunchTemplateSpecificationResponse? launchTemplate;
  @override
  final int maxParallelLaunches;
  @override
  final String? ownerId;
  @override
  final FastLaunchStateCode? state;
  @override
  final String? stateTransitionReason;
  @override
  final DateTime? stateTransitionTime;

  factory _$DisableFastLaunchResult(
          [void Function(DisableFastLaunchResultBuilder)? updates]) =>
      (new DisableFastLaunchResultBuilder()..update(updates))._build();

  _$DisableFastLaunchResult._(
      {this.imageId,
      this.resourceType,
      this.snapshotConfiguration,
      this.launchTemplate,
      required this.maxParallelLaunches,
      this.ownerId,
      this.state,
      this.stateTransitionReason,
      this.stateTransitionTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxParallelLaunches, r'DisableFastLaunchResult', 'maxParallelLaunches');
  }

  @override
  DisableFastLaunchResult rebuild(
          void Function(DisableFastLaunchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableFastLaunchResultBuilder toBuilder() =>
      new DisableFastLaunchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableFastLaunchResult &&
        imageId == other.imageId &&
        resourceType == other.resourceType &&
        snapshotConfiguration == other.snapshotConfiguration &&
        launchTemplate == other.launchTemplate &&
        maxParallelLaunches == other.maxParallelLaunches &&
        ownerId == other.ownerId &&
        state == other.state &&
        stateTransitionReason == other.stateTransitionReason &&
        stateTransitionTime == other.stateTransitionTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, snapshotConfiguration.hashCode);
    _$hash = $jc(_$hash, launchTemplate.hashCode);
    _$hash = $jc(_$hash, maxParallelLaunches.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateTransitionReason.hashCode);
    _$hash = $jc(_$hash, stateTransitionTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableFastLaunchResultBuilder
    implements
        Builder<DisableFastLaunchResult, DisableFastLaunchResultBuilder> {
  _$DisableFastLaunchResult? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  FastLaunchResourceType? _resourceType;
  FastLaunchResourceType? get resourceType => _$this._resourceType;
  set resourceType(FastLaunchResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  FastLaunchSnapshotConfigurationResponseBuilder? _snapshotConfiguration;
  FastLaunchSnapshotConfigurationResponseBuilder get snapshotConfiguration =>
      _$this._snapshotConfiguration ??=
          new FastLaunchSnapshotConfigurationResponseBuilder();
  set snapshotConfiguration(
          FastLaunchSnapshotConfigurationResponseBuilder?
              snapshotConfiguration) =>
      _$this._snapshotConfiguration = snapshotConfiguration;

  FastLaunchLaunchTemplateSpecificationResponseBuilder? _launchTemplate;
  FastLaunchLaunchTemplateSpecificationResponseBuilder get launchTemplate =>
      _$this._launchTemplate ??=
          new FastLaunchLaunchTemplateSpecificationResponseBuilder();
  set launchTemplate(
          FastLaunchLaunchTemplateSpecificationResponseBuilder?
              launchTemplate) =>
      _$this._launchTemplate = launchTemplate;

  int? _maxParallelLaunches;
  int? get maxParallelLaunches => _$this._maxParallelLaunches;
  set maxParallelLaunches(int? maxParallelLaunches) =>
      _$this._maxParallelLaunches = maxParallelLaunches;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  FastLaunchStateCode? _state;
  FastLaunchStateCode? get state => _$this._state;
  set state(FastLaunchStateCode? state) => _$this._state = state;

  String? _stateTransitionReason;
  String? get stateTransitionReason => _$this._stateTransitionReason;
  set stateTransitionReason(String? stateTransitionReason) =>
      _$this._stateTransitionReason = stateTransitionReason;

  DateTime? _stateTransitionTime;
  DateTime? get stateTransitionTime => _$this._stateTransitionTime;
  set stateTransitionTime(DateTime? stateTransitionTime) =>
      _$this._stateTransitionTime = stateTransitionTime;

  DisableFastLaunchResultBuilder() {
    DisableFastLaunchResult._init(this);
  }

  DisableFastLaunchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _resourceType = $v.resourceType;
      _snapshotConfiguration = $v.snapshotConfiguration?.toBuilder();
      _launchTemplate = $v.launchTemplate?.toBuilder();
      _maxParallelLaunches = $v.maxParallelLaunches;
      _ownerId = $v.ownerId;
      _state = $v.state;
      _stateTransitionReason = $v.stateTransitionReason;
      _stateTransitionTime = $v.stateTransitionTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableFastLaunchResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableFastLaunchResult;
  }

  @override
  void update(void Function(DisableFastLaunchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableFastLaunchResult build() => _build();

  _$DisableFastLaunchResult _build() {
    _$DisableFastLaunchResult _$result;
    try {
      _$result = _$v ??
          new _$DisableFastLaunchResult._(
              imageId: imageId,
              resourceType: resourceType,
              snapshotConfiguration: _snapshotConfiguration?.build(),
              launchTemplate: _launchTemplate?.build(),
              maxParallelLaunches: BuiltValueNullFieldError.checkNotNull(
                  maxParallelLaunches,
                  r'DisableFastLaunchResult',
                  'maxParallelLaunches'),
              ownerId: ownerId,
              state: state,
              stateTransitionReason: stateTransitionReason,
              stateTransitionTime: stateTransitionTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snapshotConfiguration';
        _snapshotConfiguration?.build();
        _$failedField = 'launchTemplate';
        _launchTemplate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisableFastLaunchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
