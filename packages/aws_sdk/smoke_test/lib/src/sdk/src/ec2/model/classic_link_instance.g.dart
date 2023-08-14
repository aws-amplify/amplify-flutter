// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_link_instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClassicLinkInstance extends ClassicLinkInstance {
  @override
  final _i2.BuiltList<GroupIdentifier>? groups;
  @override
  final String? instanceId;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? vpcId;

  factory _$ClassicLinkInstance(
          [void Function(ClassicLinkInstanceBuilder)? updates]) =>
      (new ClassicLinkInstanceBuilder()..update(updates))._build();

  _$ClassicLinkInstance._({this.groups, this.instanceId, this.tags, this.vpcId})
      : super._();

  @override
  ClassicLinkInstance rebuild(
          void Function(ClassicLinkInstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassicLinkInstanceBuilder toBuilder() =>
      new ClassicLinkInstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassicLinkInstance &&
        groups == other.groups &&
        instanceId == other.instanceId &&
        tags == other.tags &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClassicLinkInstanceBuilder
    implements Builder<ClassicLinkInstance, ClassicLinkInstanceBuilder> {
  _$ClassicLinkInstance? _$v;

  _i2.ListBuilder<GroupIdentifier>? _groups;
  _i2.ListBuilder<GroupIdentifier> get groups =>
      _$this._groups ??= new _i2.ListBuilder<GroupIdentifier>();
  set groups(_i2.ListBuilder<GroupIdentifier>? groups) =>
      _$this._groups = groups;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  ClassicLinkInstanceBuilder();

  ClassicLinkInstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groups = $v.groups?.toBuilder();
      _instanceId = $v.instanceId;
      _tags = $v.tags?.toBuilder();
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassicLinkInstance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClassicLinkInstance;
  }

  @override
  void update(void Function(ClassicLinkInstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClassicLinkInstance build() => _build();

  _$ClassicLinkInstance _build() {
    _$ClassicLinkInstance _$result;
    try {
      _$result = _$v ??
          new _$ClassicLinkInstance._(
              groups: _groups?.build(),
              instanceId: instanceId,
              tags: _tags?.build(),
              vpcId: vpcId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ClassicLinkInstance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
