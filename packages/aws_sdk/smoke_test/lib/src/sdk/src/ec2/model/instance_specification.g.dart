// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceSpecification extends InstanceSpecification {
  @override
  final String? instanceId;
  @override
  final bool excludeBootVolume;
  @override
  final _i2.BuiltList<String>? excludeDataVolumeIds;

  factory _$InstanceSpecification(
          [void Function(InstanceSpecificationBuilder)? updates]) =>
      (new InstanceSpecificationBuilder()..update(updates))._build();

  _$InstanceSpecification._(
      {this.instanceId,
      required this.excludeBootVolume,
      this.excludeDataVolumeIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        excludeBootVolume, r'InstanceSpecification', 'excludeBootVolume');
  }

  @override
  InstanceSpecification rebuild(
          void Function(InstanceSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceSpecificationBuilder toBuilder() =>
      new InstanceSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceSpecification &&
        instanceId == other.instanceId &&
        excludeBootVolume == other.excludeBootVolume &&
        excludeDataVolumeIds == other.excludeDataVolumeIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, excludeBootVolume.hashCode);
    _$hash = $jc(_$hash, excludeDataVolumeIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceSpecificationBuilder
    implements Builder<InstanceSpecification, InstanceSpecificationBuilder> {
  _$InstanceSpecification? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  bool? _excludeBootVolume;
  bool? get excludeBootVolume => _$this._excludeBootVolume;
  set excludeBootVolume(bool? excludeBootVolume) =>
      _$this._excludeBootVolume = excludeBootVolume;

  _i2.ListBuilder<String>? _excludeDataVolumeIds;
  _i2.ListBuilder<String> get excludeDataVolumeIds =>
      _$this._excludeDataVolumeIds ??= new _i2.ListBuilder<String>();
  set excludeDataVolumeIds(_i2.ListBuilder<String>? excludeDataVolumeIds) =>
      _$this._excludeDataVolumeIds = excludeDataVolumeIds;

  InstanceSpecificationBuilder() {
    InstanceSpecification._init(this);
  }

  InstanceSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _excludeBootVolume = $v.excludeBootVolume;
      _excludeDataVolumeIds = $v.excludeDataVolumeIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceSpecification;
  }

  @override
  void update(void Function(InstanceSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceSpecification build() => _build();

  _$InstanceSpecification _build() {
    _$InstanceSpecification _$result;
    try {
      _$result = _$v ??
          new _$InstanceSpecification._(
              instanceId: instanceId,
              excludeBootVolume: BuiltValueNullFieldError.checkNotNull(
                  excludeBootVolume,
                  r'InstanceSpecification',
                  'excludeBootVolume'),
              excludeDataVolumeIds: _excludeDataVolumeIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'excludeDataVolumeIds';
        _excludeDataVolumeIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
