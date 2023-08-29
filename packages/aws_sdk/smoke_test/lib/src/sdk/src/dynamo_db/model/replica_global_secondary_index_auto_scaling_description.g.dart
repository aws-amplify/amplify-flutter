// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replica_global_secondary_index_auto_scaling_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaGlobalSecondaryIndexAutoScalingDescription
    extends ReplicaGlobalSecondaryIndexAutoScalingDescription {
  @override
  final String? indexName;
  @override
  final IndexStatus? indexStatus;
  @override
  final AutoScalingSettingsDescription?
      provisionedReadCapacityAutoScalingSettings;
  @override
  final AutoScalingSettingsDescription?
      provisionedWriteCapacityAutoScalingSettings;

  factory _$ReplicaGlobalSecondaryIndexAutoScalingDescription(
          [void Function(
                  ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder)?
              updates]) =>
      (new ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder()
            ..update(updates))
          ._build();

  _$ReplicaGlobalSecondaryIndexAutoScalingDescription._(
      {this.indexName,
      this.indexStatus,
      this.provisionedReadCapacityAutoScalingSettings,
      this.provisionedWriteCapacityAutoScalingSettings})
      : super._();

  @override
  ReplicaGlobalSecondaryIndexAutoScalingDescription rebuild(
          void Function(
                  ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder toBuilder() =>
      new ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaGlobalSecondaryIndexAutoScalingDescription &&
        indexName == other.indexName &&
        indexStatus == other.indexStatus &&
        provisionedReadCapacityAutoScalingSettings ==
            other.provisionedReadCapacityAutoScalingSettings &&
        provisionedWriteCapacityAutoScalingSettings ==
            other.provisionedWriteCapacityAutoScalingSettings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, indexStatus.hashCode);
    _$hash = $jc(_$hash, provisionedReadCapacityAutoScalingSettings.hashCode);
    _$hash = $jc(_$hash, provisionedWriteCapacityAutoScalingSettings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder
    implements
        Builder<ReplicaGlobalSecondaryIndexAutoScalingDescription,
            ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder> {
  _$ReplicaGlobalSecondaryIndexAutoScalingDescription? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  IndexStatus? _indexStatus;
  IndexStatus? get indexStatus => _$this._indexStatus;
  set indexStatus(IndexStatus? indexStatus) =>
      _$this._indexStatus = indexStatus;

  AutoScalingSettingsDescriptionBuilder?
      _provisionedReadCapacityAutoScalingSettings;
  AutoScalingSettingsDescriptionBuilder
      get provisionedReadCapacityAutoScalingSettings =>
          _$this._provisionedReadCapacityAutoScalingSettings ??=
              new AutoScalingSettingsDescriptionBuilder();
  set provisionedReadCapacityAutoScalingSettings(
          AutoScalingSettingsDescriptionBuilder?
              provisionedReadCapacityAutoScalingSettings) =>
      _$this._provisionedReadCapacityAutoScalingSettings =
          provisionedReadCapacityAutoScalingSettings;

  AutoScalingSettingsDescriptionBuilder?
      _provisionedWriteCapacityAutoScalingSettings;
  AutoScalingSettingsDescriptionBuilder
      get provisionedWriteCapacityAutoScalingSettings =>
          _$this._provisionedWriteCapacityAutoScalingSettings ??=
              new AutoScalingSettingsDescriptionBuilder();
  set provisionedWriteCapacityAutoScalingSettings(
          AutoScalingSettingsDescriptionBuilder?
              provisionedWriteCapacityAutoScalingSettings) =>
      _$this._provisionedWriteCapacityAutoScalingSettings =
          provisionedWriteCapacityAutoScalingSettings;

  ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder();

  ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _indexStatus = $v.indexStatus;
      _provisionedReadCapacityAutoScalingSettings =
          $v.provisionedReadCapacityAutoScalingSettings?.toBuilder();
      _provisionedWriteCapacityAutoScalingSettings =
          $v.provisionedWriteCapacityAutoScalingSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaGlobalSecondaryIndexAutoScalingDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaGlobalSecondaryIndexAutoScalingDescription;
  }

  @override
  void update(
      void Function(ReplicaGlobalSecondaryIndexAutoScalingDescriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaGlobalSecondaryIndexAutoScalingDescription build() => _build();

  _$ReplicaGlobalSecondaryIndexAutoScalingDescription _build() {
    _$ReplicaGlobalSecondaryIndexAutoScalingDescription _$result;
    try {
      _$result = _$v ??
          new _$ReplicaGlobalSecondaryIndexAutoScalingDescription._(
              indexName: indexName,
              indexStatus: indexStatus,
              provisionedReadCapacityAutoScalingSettings:
                  _provisionedReadCapacityAutoScalingSettings?.build(),
              provisionedWriteCapacityAutoScalingSettings:
                  _provisionedWriteCapacityAutoScalingSettings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provisionedReadCapacityAutoScalingSettings';
        _provisionedReadCapacityAutoScalingSettings?.build();
        _$failedField = 'provisionedWriteCapacityAutoScalingSettings';
        _provisionedWriteCapacityAutoScalingSettings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicaGlobalSecondaryIndexAutoScalingDescription',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
