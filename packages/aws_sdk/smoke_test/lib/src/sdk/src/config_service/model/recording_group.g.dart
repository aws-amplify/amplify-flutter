// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recording_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordingGroup extends RecordingGroup {
  @override
  final bool allSupported;
  @override
  final bool includeGlobalResourceTypes;
  @override
  final _i5.BuiltList<_i2.ResourceType>? resourceTypes;
  @override
  final _i3.ExclusionByResourceTypes? exclusionByResourceTypes;
  @override
  final _i4.RecordingStrategy? recordingStrategy;

  factory _$RecordingGroup([void Function(RecordingGroupBuilder)? updates]) =>
      (new RecordingGroupBuilder()..update(updates))._build();

  _$RecordingGroup._(
      {required this.allSupported,
      required this.includeGlobalResourceTypes,
      this.resourceTypes,
      this.exclusionByResourceTypes,
      this.recordingStrategy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allSupported, r'RecordingGroup', 'allSupported');
    BuiltValueNullFieldError.checkNotNull(includeGlobalResourceTypes,
        r'RecordingGroup', 'includeGlobalResourceTypes');
  }

  @override
  RecordingGroup rebuild(void Function(RecordingGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordingGroupBuilder toBuilder() =>
      new RecordingGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordingGroup &&
        allSupported == other.allSupported &&
        includeGlobalResourceTypes == other.includeGlobalResourceTypes &&
        resourceTypes == other.resourceTypes &&
        exclusionByResourceTypes == other.exclusionByResourceTypes &&
        recordingStrategy == other.recordingStrategy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allSupported.hashCode);
    _$hash = $jc(_$hash, includeGlobalResourceTypes.hashCode);
    _$hash = $jc(_$hash, resourceTypes.hashCode);
    _$hash = $jc(_$hash, exclusionByResourceTypes.hashCode);
    _$hash = $jc(_$hash, recordingStrategy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecordingGroupBuilder
    implements Builder<RecordingGroup, RecordingGroupBuilder> {
  _$RecordingGroup? _$v;

  bool? _allSupported;
  bool? get allSupported => _$this._allSupported;
  set allSupported(bool? allSupported) => _$this._allSupported = allSupported;

  bool? _includeGlobalResourceTypes;
  bool? get includeGlobalResourceTypes => _$this._includeGlobalResourceTypes;
  set includeGlobalResourceTypes(bool? includeGlobalResourceTypes) =>
      _$this._includeGlobalResourceTypes = includeGlobalResourceTypes;

  _i5.ListBuilder<_i2.ResourceType>? _resourceTypes;
  _i5.ListBuilder<_i2.ResourceType> get resourceTypes =>
      _$this._resourceTypes ??= new _i5.ListBuilder<_i2.ResourceType>();
  set resourceTypes(_i5.ListBuilder<_i2.ResourceType>? resourceTypes) =>
      _$this._resourceTypes = resourceTypes;

  _i3.ExclusionByResourceTypesBuilder? _exclusionByResourceTypes;
  _i3.ExclusionByResourceTypesBuilder get exclusionByResourceTypes =>
      _$this._exclusionByResourceTypes ??=
          new _i3.ExclusionByResourceTypesBuilder();
  set exclusionByResourceTypes(
          _i3.ExclusionByResourceTypesBuilder? exclusionByResourceTypes) =>
      _$this._exclusionByResourceTypes = exclusionByResourceTypes;

  _i4.RecordingStrategyBuilder? _recordingStrategy;
  _i4.RecordingStrategyBuilder get recordingStrategy =>
      _$this._recordingStrategy ??= new _i4.RecordingStrategyBuilder();
  set recordingStrategy(_i4.RecordingStrategyBuilder? recordingStrategy) =>
      _$this._recordingStrategy = recordingStrategy;

  RecordingGroupBuilder() {
    RecordingGroup._init(this);
  }

  RecordingGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allSupported = $v.allSupported;
      _includeGlobalResourceTypes = $v.includeGlobalResourceTypes;
      _resourceTypes = $v.resourceTypes?.toBuilder();
      _exclusionByResourceTypes = $v.exclusionByResourceTypes?.toBuilder();
      _recordingStrategy = $v.recordingStrategy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordingGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecordingGroup;
  }

  @override
  void update(void Function(RecordingGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordingGroup build() => _build();

  _$RecordingGroup _build() {
    _$RecordingGroup _$result;
    try {
      _$result = _$v ??
          new _$RecordingGroup._(
              allSupported: BuiltValueNullFieldError.checkNotNull(
                  allSupported, r'RecordingGroup', 'allSupported'),
              includeGlobalResourceTypes: BuiltValueNullFieldError.checkNotNull(
                  includeGlobalResourceTypes,
                  r'RecordingGroup',
                  'includeGlobalResourceTypes'),
              resourceTypes: _resourceTypes?.build(),
              exclusionByResourceTypes: _exclusionByResourceTypes?.build(),
              recordingStrategy: _recordingStrategy?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceTypes';
        _resourceTypes?.build();
        _$failedField = 'exclusionByResourceTypes';
        _exclusionByResourceTypes?.build();
        _$failedField = 'recordingStrategy';
        _recordingStrategy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RecordingGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
