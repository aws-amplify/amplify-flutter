// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deregister_instance_tag_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeregisterInstanceTagAttributeRequest
    extends DeregisterInstanceTagAttributeRequest {
  @override
  final bool includeAllTagsOfInstance;
  @override
  final _i2.BuiltList<String>? instanceTagKeys;

  factory _$DeregisterInstanceTagAttributeRequest(
          [void Function(DeregisterInstanceTagAttributeRequestBuilder)?
              updates]) =>
      (new DeregisterInstanceTagAttributeRequestBuilder()..update(updates))
          ._build();

  _$DeregisterInstanceTagAttributeRequest._(
      {required this.includeAllTagsOfInstance, this.instanceTagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(includeAllTagsOfInstance,
        r'DeregisterInstanceTagAttributeRequest', 'includeAllTagsOfInstance');
  }

  @override
  DeregisterInstanceTagAttributeRequest rebuild(
          void Function(DeregisterInstanceTagAttributeRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeregisterInstanceTagAttributeRequestBuilder toBuilder() =>
      new DeregisterInstanceTagAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeregisterInstanceTagAttributeRequest &&
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

class DeregisterInstanceTagAttributeRequestBuilder
    implements
        Builder<DeregisterInstanceTagAttributeRequest,
            DeregisterInstanceTagAttributeRequestBuilder> {
  _$DeregisterInstanceTagAttributeRequest? _$v;

  bool? _includeAllTagsOfInstance;
  bool? get includeAllTagsOfInstance => _$this._includeAllTagsOfInstance;
  set includeAllTagsOfInstance(bool? includeAllTagsOfInstance) =>
      _$this._includeAllTagsOfInstance = includeAllTagsOfInstance;

  _i2.ListBuilder<String>? _instanceTagKeys;
  _i2.ListBuilder<String> get instanceTagKeys =>
      _$this._instanceTagKeys ??= new _i2.ListBuilder<String>();
  set instanceTagKeys(_i2.ListBuilder<String>? instanceTagKeys) =>
      _$this._instanceTagKeys = instanceTagKeys;

  DeregisterInstanceTagAttributeRequestBuilder() {
    DeregisterInstanceTagAttributeRequest._init(this);
  }

  DeregisterInstanceTagAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _includeAllTagsOfInstance = $v.includeAllTagsOfInstance;
      _instanceTagKeys = $v.instanceTagKeys?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeregisterInstanceTagAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeregisterInstanceTagAttributeRequest;
  }

  @override
  void update(
      void Function(DeregisterInstanceTagAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeregisterInstanceTagAttributeRequest build() => _build();

  _$DeregisterInstanceTagAttributeRequest _build() {
    _$DeregisterInstanceTagAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$DeregisterInstanceTagAttributeRequest._(
              includeAllTagsOfInstance: BuiltValueNullFieldError.checkNotNull(
                  includeAllTagsOfInstance,
                  r'DeregisterInstanceTagAttributeRequest',
                  'includeAllTagsOfInstance'),
              instanceTagKeys: _instanceTagKeys?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTagKeys';
        _instanceTagKeys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeregisterInstanceTagAttributeRequest',
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
