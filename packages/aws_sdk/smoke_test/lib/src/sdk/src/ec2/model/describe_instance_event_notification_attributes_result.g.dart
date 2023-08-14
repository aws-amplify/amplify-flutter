// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_event_notification_attributes_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceEventNotificationAttributesResult
    extends DescribeInstanceEventNotificationAttributesResult {
  @override
  final InstanceTagNotificationAttribute? instanceTagAttribute;

  factory _$DescribeInstanceEventNotificationAttributesResult(
          [void Function(
                  DescribeInstanceEventNotificationAttributesResultBuilder)?
              updates]) =>
      (new DescribeInstanceEventNotificationAttributesResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeInstanceEventNotificationAttributesResult._(
      {this.instanceTagAttribute})
      : super._();

  @override
  DescribeInstanceEventNotificationAttributesResult rebuild(
          void Function(
                  DescribeInstanceEventNotificationAttributesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceEventNotificationAttributesResultBuilder toBuilder() =>
      new DescribeInstanceEventNotificationAttributesResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceEventNotificationAttributesResult &&
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

class DescribeInstanceEventNotificationAttributesResultBuilder
    implements
        Builder<DescribeInstanceEventNotificationAttributesResult,
            DescribeInstanceEventNotificationAttributesResultBuilder> {
  _$DescribeInstanceEventNotificationAttributesResult? _$v;

  InstanceTagNotificationAttributeBuilder? _instanceTagAttribute;
  InstanceTagNotificationAttributeBuilder get instanceTagAttribute =>
      _$this._instanceTagAttribute ??=
          new InstanceTagNotificationAttributeBuilder();
  set instanceTagAttribute(
          InstanceTagNotificationAttributeBuilder? instanceTagAttribute) =>
      _$this._instanceTagAttribute = instanceTagAttribute;

  DescribeInstanceEventNotificationAttributesResultBuilder();

  DescribeInstanceEventNotificationAttributesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceTagAttribute = $v.instanceTagAttribute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceEventNotificationAttributesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceEventNotificationAttributesResult;
  }

  @override
  void update(
      void Function(DescribeInstanceEventNotificationAttributesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceEventNotificationAttributesResult build() => _build();

  _$DescribeInstanceEventNotificationAttributesResult _build() {
    _$DescribeInstanceEventNotificationAttributesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceEventNotificationAttributesResult._(
              instanceTagAttribute: _instanceTagAttribute?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTagAttribute';
        _instanceTagAttribute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceEventNotificationAttributesResult',
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
