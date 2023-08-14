// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_event_window_association_target.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceEventWindowAssociationTarget
    extends InstanceEventWindowAssociationTarget {
  @override
  final _i2.BuiltList<String>? instanceIds;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final _i2.BuiltList<String>? dedicatedHostIds;

  factory _$InstanceEventWindowAssociationTarget(
          [void Function(InstanceEventWindowAssociationTargetBuilder)?
              updates]) =>
      (new InstanceEventWindowAssociationTargetBuilder()..update(updates))
          ._build();

  _$InstanceEventWindowAssociationTarget._(
      {this.instanceIds, this.tags, this.dedicatedHostIds})
      : super._();

  @override
  InstanceEventWindowAssociationTarget rebuild(
          void Function(InstanceEventWindowAssociationTargetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceEventWindowAssociationTargetBuilder toBuilder() =>
      new InstanceEventWindowAssociationTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceEventWindowAssociationTarget &&
        instanceIds == other.instanceIds &&
        tags == other.tags &&
        dedicatedHostIds == other.dedicatedHostIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceIds.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, dedicatedHostIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceEventWindowAssociationTargetBuilder
    implements
        Builder<InstanceEventWindowAssociationTarget,
            InstanceEventWindowAssociationTargetBuilder> {
  _$InstanceEventWindowAssociationTarget? _$v;

  _i2.ListBuilder<String>? _instanceIds;
  _i2.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i2.ListBuilder<String>();
  set instanceIds(_i2.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  _i2.ListBuilder<String>? _dedicatedHostIds;
  _i2.ListBuilder<String> get dedicatedHostIds =>
      _$this._dedicatedHostIds ??= new _i2.ListBuilder<String>();
  set dedicatedHostIds(_i2.ListBuilder<String>? dedicatedHostIds) =>
      _$this._dedicatedHostIds = dedicatedHostIds;

  InstanceEventWindowAssociationTargetBuilder();

  InstanceEventWindowAssociationTargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceIds = $v.instanceIds?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _dedicatedHostIds = $v.dedicatedHostIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceEventWindowAssociationTarget other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceEventWindowAssociationTarget;
  }

  @override
  void update(
      void Function(InstanceEventWindowAssociationTargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceEventWindowAssociationTarget build() => _build();

  _$InstanceEventWindowAssociationTarget _build() {
    _$InstanceEventWindowAssociationTarget _$result;
    try {
      _$result = _$v ??
          new _$InstanceEventWindowAssociationTarget._(
              instanceIds: _instanceIds?.build(),
              tags: _tags?.build(),
              dedicatedHostIds: _dedicatedHostIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceIds';
        _instanceIds?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'dedicatedHostIds';
        _dedicatedHostIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceEventWindowAssociationTarget',
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
