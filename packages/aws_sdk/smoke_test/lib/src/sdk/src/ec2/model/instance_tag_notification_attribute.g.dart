// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_tag_notification_attribute.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceTagNotificationAttribute
    extends InstanceTagNotificationAttribute {
  @override
  final _i2.BuiltList<String>? instanceTagKeys;
  @override
  final bool includeAllTagsOfInstance;

  factory _$InstanceTagNotificationAttribute(
          [void Function(InstanceTagNotificationAttributeBuilder)? updates]) =>
      (new InstanceTagNotificationAttributeBuilder()..update(updates))._build();

  _$InstanceTagNotificationAttribute._(
      {this.instanceTagKeys, required this.includeAllTagsOfInstance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(includeAllTagsOfInstance,
        r'InstanceTagNotificationAttribute', 'includeAllTagsOfInstance');
  }

  @override
  InstanceTagNotificationAttribute rebuild(
          void Function(InstanceTagNotificationAttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceTagNotificationAttributeBuilder toBuilder() =>
      new InstanceTagNotificationAttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceTagNotificationAttribute &&
        instanceTagKeys == other.instanceTagKeys &&
        includeAllTagsOfInstance == other.includeAllTagsOfInstance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceTagKeys.hashCode);
    _$hash = $jc(_$hash, includeAllTagsOfInstance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceTagNotificationAttributeBuilder
    implements
        Builder<InstanceTagNotificationAttribute,
            InstanceTagNotificationAttributeBuilder> {
  _$InstanceTagNotificationAttribute? _$v;

  _i2.ListBuilder<String>? _instanceTagKeys;
  _i2.ListBuilder<String> get instanceTagKeys =>
      _$this._instanceTagKeys ??= new _i2.ListBuilder<String>();
  set instanceTagKeys(_i2.ListBuilder<String>? instanceTagKeys) =>
      _$this._instanceTagKeys = instanceTagKeys;

  bool? _includeAllTagsOfInstance;
  bool? get includeAllTagsOfInstance => _$this._includeAllTagsOfInstance;
  set includeAllTagsOfInstance(bool? includeAllTagsOfInstance) =>
      _$this._includeAllTagsOfInstance = includeAllTagsOfInstance;

  InstanceTagNotificationAttributeBuilder() {
    InstanceTagNotificationAttribute._init(this);
  }

  InstanceTagNotificationAttributeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceTagKeys = $v.instanceTagKeys?.toBuilder();
      _includeAllTagsOfInstance = $v.includeAllTagsOfInstance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceTagNotificationAttribute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceTagNotificationAttribute;
  }

  @override
  void update(void Function(InstanceTagNotificationAttributeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceTagNotificationAttribute build() => _build();

  _$InstanceTagNotificationAttribute _build() {
    _$InstanceTagNotificationAttribute _$result;
    try {
      _$result = _$v ??
          new _$InstanceTagNotificationAttribute._(
              instanceTagKeys: _instanceTagKeys?.build(),
              includeAllTagsOfInstance: BuiltValueNullFieldError.checkNotNull(
                  includeAllTagsOfInstance,
                  r'InstanceTagNotificationAttribute',
                  'includeAllTagsOfInstance'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTagKeys';
        _instanceTagKeys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceTagNotificationAttribute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
