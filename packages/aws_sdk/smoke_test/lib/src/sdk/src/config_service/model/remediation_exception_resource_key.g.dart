// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.remediation_exception_resource_key;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationExceptionResourceKey
    extends RemediationExceptionResourceKey {
  @override
  final String? resourceType;
  @override
  final String? resourceId;

  factory _$RemediationExceptionResourceKey(
          [void Function(RemediationExceptionResourceKeyBuilder)? updates]) =>
      (new RemediationExceptionResourceKeyBuilder()..update(updates))._build();

  _$RemediationExceptionResourceKey._({this.resourceType, this.resourceId})
      : super._();

  @override
  RemediationExceptionResourceKey rebuild(
          void Function(RemediationExceptionResourceKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemediationExceptionResourceKeyBuilder toBuilder() =>
      new RemediationExceptionResourceKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemediationExceptionResourceKey &&
        resourceType == other.resourceType &&
        resourceId == other.resourceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemediationExceptionResourceKeyBuilder
    implements
        Builder<RemediationExceptionResourceKey,
            RemediationExceptionResourceKeyBuilder> {
  _$RemediationExceptionResourceKey? _$v;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  RemediationExceptionResourceKeyBuilder() {
    RemediationExceptionResourceKey._init(this);
  }

  RemediationExceptionResourceKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemediationExceptionResourceKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemediationExceptionResourceKey;
  }

  @override
  void update(void Function(RemediationExceptionResourceKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemediationExceptionResourceKey build() => _build();

  _$RemediationExceptionResourceKey _build() {
    final _$result = _$v ??
        new _$RemediationExceptionResourceKey._(
            resourceType: resourceType, resourceId: resourceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
