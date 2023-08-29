// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deregister_instance_event_notification_attributes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeregisterInstanceEventNotificationAttributesRequest
    extends DeregisterInstanceEventNotificationAttributesRequest {
  @override
  final bool dryRun;
  @override
  final DeregisterInstanceTagAttributeRequest? instanceTagAttribute;

  factory _$DeregisterInstanceEventNotificationAttributesRequest(
          [void Function(
                  DeregisterInstanceEventNotificationAttributesRequestBuilder)?
              updates]) =>
      (new DeregisterInstanceEventNotificationAttributesRequestBuilder()
            ..update(updates))
          ._build();

  _$DeregisterInstanceEventNotificationAttributesRequest._(
      {required this.dryRun, this.instanceTagAttribute})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'DeregisterInstanceEventNotificationAttributesRequest', 'dryRun');
  }

  @override
  DeregisterInstanceEventNotificationAttributesRequest rebuild(
          void Function(
                  DeregisterInstanceEventNotificationAttributesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeregisterInstanceEventNotificationAttributesRequestBuilder toBuilder() =>
      new DeregisterInstanceEventNotificationAttributesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeregisterInstanceEventNotificationAttributesRequest &&
        dryRun == other.dryRun &&
        instanceTagAttribute == other.instanceTagAttribute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceTagAttribute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeregisterInstanceEventNotificationAttributesRequestBuilder
    implements
        Builder<DeregisterInstanceEventNotificationAttributesRequest,
            DeregisterInstanceEventNotificationAttributesRequestBuilder> {
  _$DeregisterInstanceEventNotificationAttributesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeregisterInstanceTagAttributeRequestBuilder? _instanceTagAttribute;
  DeregisterInstanceTagAttributeRequestBuilder get instanceTagAttribute =>
      _$this._instanceTagAttribute ??=
          new DeregisterInstanceTagAttributeRequestBuilder();
  set instanceTagAttribute(
          DeregisterInstanceTagAttributeRequestBuilder? instanceTagAttribute) =>
      _$this._instanceTagAttribute = instanceTagAttribute;

  DeregisterInstanceEventNotificationAttributesRequestBuilder() {
    DeregisterInstanceEventNotificationAttributesRequest._init(this);
  }

  DeregisterInstanceEventNotificationAttributesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceTagAttribute = $v.instanceTagAttribute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeregisterInstanceEventNotificationAttributesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeregisterInstanceEventNotificationAttributesRequest;
  }

  @override
  void update(
      void Function(
              DeregisterInstanceEventNotificationAttributesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeregisterInstanceEventNotificationAttributesRequest build() => _build();

  _$DeregisterInstanceEventNotificationAttributesRequest _build() {
    _$DeregisterInstanceEventNotificationAttributesRequest _$result;
    try {
      _$result = _$v ??
          new _$DeregisterInstanceEventNotificationAttributesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'DeregisterInstanceEventNotificationAttributesRequest',
                  'dryRun'),
              instanceTagAttribute: _instanceTagAttribute?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTagAttribute';
        _instanceTagAttribute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeregisterInstanceEventNotificationAttributesRequest',
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
