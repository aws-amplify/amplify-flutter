// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_fleet_request_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotFleetRequestConfig extends SpotFleetRequestConfig {
  @override
  final ActivityStatus? activityStatus;
  @override
  final DateTime? createTime;
  @override
  final SpotFleetRequestConfigData? spotFleetRequestConfig;
  @override
  final String? spotFleetRequestId;
  @override
  final BatchState? spotFleetRequestState;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$SpotFleetRequestConfig(
          [void Function(SpotFleetRequestConfigBuilder)? updates]) =>
      (new SpotFleetRequestConfigBuilder()..update(updates))._build();

  _$SpotFleetRequestConfig._(
      {this.activityStatus,
      this.createTime,
      this.spotFleetRequestConfig,
      this.spotFleetRequestId,
      this.spotFleetRequestState,
      this.tags})
      : super._();

  @override
  SpotFleetRequestConfig rebuild(
          void Function(SpotFleetRequestConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotFleetRequestConfigBuilder toBuilder() =>
      new SpotFleetRequestConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotFleetRequestConfig &&
        activityStatus == other.activityStatus &&
        createTime == other.createTime &&
        spotFleetRequestConfig == other.spotFleetRequestConfig &&
        spotFleetRequestId == other.spotFleetRequestId &&
        spotFleetRequestState == other.spotFleetRequestState &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activityStatus.hashCode);
    _$hash = $jc(_$hash, createTime.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestConfig.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestId.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestState.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotFleetRequestConfigBuilder
    implements Builder<SpotFleetRequestConfig, SpotFleetRequestConfigBuilder> {
  _$SpotFleetRequestConfig? _$v;

  ActivityStatus? _activityStatus;
  ActivityStatus? get activityStatus => _$this._activityStatus;
  set activityStatus(ActivityStatus? activityStatus) =>
      _$this._activityStatus = activityStatus;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  SpotFleetRequestConfigDataBuilder? _spotFleetRequestConfig;
  SpotFleetRequestConfigDataBuilder get spotFleetRequestConfig =>
      _$this._spotFleetRequestConfig ??=
          new SpotFleetRequestConfigDataBuilder();
  set spotFleetRequestConfig(
          SpotFleetRequestConfigDataBuilder? spotFleetRequestConfig) =>
      _$this._spotFleetRequestConfig = spotFleetRequestConfig;

  String? _spotFleetRequestId;
  String? get spotFleetRequestId => _$this._spotFleetRequestId;
  set spotFleetRequestId(String? spotFleetRequestId) =>
      _$this._spotFleetRequestId = spotFleetRequestId;

  BatchState? _spotFleetRequestState;
  BatchState? get spotFleetRequestState => _$this._spotFleetRequestState;
  set spotFleetRequestState(BatchState? spotFleetRequestState) =>
      _$this._spotFleetRequestState = spotFleetRequestState;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  SpotFleetRequestConfigBuilder();

  SpotFleetRequestConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activityStatus = $v.activityStatus;
      _createTime = $v.createTime;
      _spotFleetRequestConfig = $v.spotFleetRequestConfig?.toBuilder();
      _spotFleetRequestId = $v.spotFleetRequestId;
      _spotFleetRequestState = $v.spotFleetRequestState;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotFleetRequestConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotFleetRequestConfig;
  }

  @override
  void update(void Function(SpotFleetRequestConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotFleetRequestConfig build() => _build();

  _$SpotFleetRequestConfig _build() {
    _$SpotFleetRequestConfig _$result;
    try {
      _$result = _$v ??
          new _$SpotFleetRequestConfig._(
              activityStatus: activityStatus,
              createTime: createTime,
              spotFleetRequestConfig: _spotFleetRequestConfig?.build(),
              spotFleetRequestId: spotFleetRequestId,
              spotFleetRequestState: spotFleetRequestState,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotFleetRequestConfig';
        _spotFleetRequestConfig?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotFleetRequestConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
