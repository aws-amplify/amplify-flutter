// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.recording_group;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordingGroup extends RecordingGroup {
  @override
  final bool? allSupported;
  @override
  final bool? includeGlobalResourceTypes;
  @override
  final _i3.BuiltList<_i2.ResourceType>? resourceTypes;

  factory _$RecordingGroup([void Function(RecordingGroupBuilder)? updates]) =>
      (new RecordingGroupBuilder()..update(updates))._build();

  _$RecordingGroup._(
      {this.allSupported, this.includeGlobalResourceTypes, this.resourceTypes})
      : super._();

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
        resourceTypes == other.resourceTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allSupported.hashCode);
    _$hash = $jc(_$hash, includeGlobalResourceTypes.hashCode);
    _$hash = $jc(_$hash, resourceTypes.hashCode);
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

  _i3.ListBuilder<_i2.ResourceType>? _resourceTypes;
  _i3.ListBuilder<_i2.ResourceType> get resourceTypes =>
      _$this._resourceTypes ??= new _i3.ListBuilder<_i2.ResourceType>();
  set resourceTypes(_i3.ListBuilder<_i2.ResourceType>? resourceTypes) =>
      _$this._resourceTypes = resourceTypes;

  RecordingGroupBuilder() {
    RecordingGroup._init(this);
  }

  RecordingGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allSupported = $v.allSupported;
      _includeGlobalResourceTypes = $v.includeGlobalResourceTypes;
      _resourceTypes = $v.resourceTypes?.toBuilder();
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
              allSupported: allSupported,
              includeGlobalResourceTypes: includeGlobalResourceTypes,
              resourceTypes: _resourceTypes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceTypes';
        _resourceTypes?.build();
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
