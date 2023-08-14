// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deregister_instance_event_notification_attributes_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeregisterInstanceEventNotificationAttributesResult
    extends DeregisterInstanceEventNotificationAttributesResult {
  @override
  final InstanceTagNotificationAttribute? instanceTagAttribute;

  factory _$DeregisterInstanceEventNotificationAttributesResult(
          [void Function(
                  DeregisterInstanceEventNotificationAttributesResultBuilder)?
              updates]) =>
      (new DeregisterInstanceEventNotificationAttributesResultBuilder()
            ..update(updates))
          ._build();

  _$DeregisterInstanceEventNotificationAttributesResult._(
      {this.instanceTagAttribute})
      : super._();

  @override
  DeregisterInstanceEventNotificationAttributesResult rebuild(
          void Function(
                  DeregisterInstanceEventNotificationAttributesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeregisterInstanceEventNotificationAttributesResultBuilder toBuilder() =>
      new DeregisterInstanceEventNotificationAttributesResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeregisterInstanceEventNotificationAttributesResult &&
        instanceTagAttribute == other.instanceTagAttribute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceTagAttribute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeregisterInstanceEventNotificationAttributesResultBuilder
    implements
        Builder<DeregisterInstanceEventNotificationAttributesResult,
            DeregisterInstanceEventNotificationAttributesResultBuilder> {
  _$DeregisterInstanceEventNotificationAttributesResult? _$v;

  InstanceTagNotificationAttributeBuilder? _instanceTagAttribute;
  InstanceTagNotificationAttributeBuilder get instanceTagAttribute =>
      _$this._instanceTagAttribute ??=
          new InstanceTagNotificationAttributeBuilder();
  set instanceTagAttribute(
          InstanceTagNotificationAttributeBuilder? instanceTagAttribute) =>
      _$this._instanceTagAttribute = instanceTagAttribute;

  DeregisterInstanceEventNotificationAttributesResultBuilder();

  DeregisterInstanceEventNotificationAttributesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceTagAttribute = $v.instanceTagAttribute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeregisterInstanceEventNotificationAttributesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeregisterInstanceEventNotificationAttributesResult;
  }

  @override
  void update(
      void Function(DeregisterInstanceEventNotificationAttributesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeregisterInstanceEventNotificationAttributesResult build() => _build();

  _$DeregisterInstanceEventNotificationAttributesResult _build() {
    _$DeregisterInstanceEventNotificationAttributesResult _$result;
    try {
      _$result = _$v ??
          new _$DeregisterInstanceEventNotificationAttributesResult._(
              instanceTagAttribute: _instanceTagAttribute?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTagAttribute';
        _instanceTagAttribute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeregisterInstanceEventNotificationAttributesResult',
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
