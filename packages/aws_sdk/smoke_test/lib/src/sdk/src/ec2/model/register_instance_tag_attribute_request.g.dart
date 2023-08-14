// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_instance_tag_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterInstanceTagAttributeRequest
    extends RegisterInstanceTagAttributeRequest {
  @override
  final bool includeAllTagsOfInstance;
  @override
  final _i2.BuiltList<String>? instanceTagKeys;

  factory _$RegisterInstanceTagAttributeRequest(
          [void Function(RegisterInstanceTagAttributeRequestBuilder)?
              updates]) =>
      (new RegisterInstanceTagAttributeRequestBuilder()..update(updates))
          ._build();

  _$RegisterInstanceTagAttributeRequest._(
      {required this.includeAllTagsOfInstance, this.instanceTagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(includeAllTagsOfInstance,
        r'RegisterInstanceTagAttributeRequest', 'includeAllTagsOfInstance');
  }

  @override
  RegisterInstanceTagAttributeRequest rebuild(
          void Function(RegisterInstanceTagAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterInstanceTagAttributeRequestBuilder toBuilder() =>
      new RegisterInstanceTagAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterInstanceTagAttributeRequest &&
        includeAllTagsOfInstance == other.includeAllTagsOfInstance &&
        instanceTagKeys == other.instanceTagKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, includeAllTagsOfInstance.hashCode);
    _$hash = $jc(_$hash, instanceTagKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RegisterInstanceTagAttributeRequestBuilder
    implements
        Builder<RegisterInstanceTagAttributeRequest,
            RegisterInstanceTagAttributeRequestBuilder> {
  _$RegisterInstanceTagAttributeRequest? _$v;

  bool? _includeAllTagsOfInstance;
  bool? get includeAllTagsOfInstance => _$this._includeAllTagsOfInstance;
  set includeAllTagsOfInstance(bool? includeAllTagsOfInstance) =>
      _$this._includeAllTagsOfInstance = includeAllTagsOfInstance;

  _i2.ListBuilder<String>? _instanceTagKeys;
  _i2.ListBuilder<String> get instanceTagKeys =>
      _$this._instanceTagKeys ??= new _i2.ListBuilder<String>();
  set instanceTagKeys(_i2.ListBuilder<String>? instanceTagKeys) =>
      _$this._instanceTagKeys = instanceTagKeys;

  RegisterInstanceTagAttributeRequestBuilder() {
    RegisterInstanceTagAttributeRequest._init(this);
  }

  RegisterInstanceTagAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _includeAllTagsOfInstance = $v.includeAllTagsOfInstance;
      _instanceTagKeys = $v.instanceTagKeys?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterInstanceTagAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterInstanceTagAttributeRequest;
  }

  @override
  void update(
      void Function(RegisterInstanceTagAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterInstanceTagAttributeRequest build() => _build();

  _$RegisterInstanceTagAttributeRequest _build() {
    _$RegisterInstanceTagAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$RegisterInstanceTagAttributeRequest._(
              includeAllTagsOfInstance: BuiltValueNullFieldError.checkNotNull(
                  includeAllTagsOfInstance,
                  r'RegisterInstanceTagAttributeRequest',
                  'includeAllTagsOfInstance'),
              instanceTagKeys: _instanceTagKeys?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTagKeys';
        _instanceTagKeys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegisterInstanceTagAttributeRequest',
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
