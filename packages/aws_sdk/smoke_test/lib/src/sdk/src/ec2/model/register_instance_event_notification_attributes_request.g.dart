// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_instance_event_notification_attributes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterInstanceEventNotificationAttributesRequest
    extends RegisterInstanceEventNotificationAttributesRequest {
  @override
  final bool dryRun;
  @override
  final RegisterInstanceTagAttributeRequest? instanceTagAttribute;

  factory _$RegisterInstanceEventNotificationAttributesRequest(
          [void Function(
                  RegisterInstanceEventNotificationAttributesRequestBuilder)?
              updates]) =>
      (new RegisterInstanceEventNotificationAttributesRequestBuilder()
            ..update(updates))
          ._build();

  _$RegisterInstanceEventNotificationAttributesRequest._(
      {required this.dryRun, this.instanceTagAttribute})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'RegisterInstanceEventNotificationAttributesRequest', 'dryRun');
  }

  @override
  RegisterInstanceEventNotificationAttributesRequest rebuild(
          void Function(
                  RegisterInstanceEventNotificationAttributesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterInstanceEventNotificationAttributesRequestBuilder toBuilder() =>
      new RegisterInstanceEventNotificationAttributesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterInstanceEventNotificationAttributesRequest &&
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

class RegisterInstanceEventNotificationAttributesRequestBuilder
    implements
        Builder<RegisterInstanceEventNotificationAttributesRequest,
            RegisterInstanceEventNotificationAttributesRequestBuilder> {
  _$RegisterInstanceEventNotificationAttributesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  RegisterInstanceTagAttributeRequestBuilder? _instanceTagAttribute;
  RegisterInstanceTagAttributeRequestBuilder get instanceTagAttribute =>
      _$this._instanceTagAttribute ??=
          new RegisterInstanceTagAttributeRequestBuilder();
  set instanceTagAttribute(
          RegisterInstanceTagAttributeRequestBuilder? instanceTagAttribute) =>
      _$this._instanceTagAttribute = instanceTagAttribute;

  RegisterInstanceEventNotificationAttributesRequestBuilder() {
    RegisterInstanceEventNotificationAttributesRequest._init(this);
  }

  RegisterInstanceEventNotificationAttributesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceTagAttribute = $v.instanceTagAttribute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterInstanceEventNotificationAttributesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterInstanceEventNotificationAttributesRequest;
  }

  @override
  void update(
      void Function(RegisterInstanceEventNotificationAttributesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterInstanceEventNotificationAttributesRequest build() => _build();

  _$RegisterInstanceEventNotificationAttributesRequest _build() {
    _$RegisterInstanceEventNotificationAttributesRequest _$result;
    try {
      _$result = _$v ??
          new _$RegisterInstanceEventNotificationAttributesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'RegisterInstanceEventNotificationAttributesRequest',
                  'dryRun'),
              instanceTagAttribute: _instanceTagAttribute?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTagAttribute';
        _instanceTagAttribute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegisterInstanceEventNotificationAttributesRequest',
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
