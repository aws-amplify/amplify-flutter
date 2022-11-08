// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.remediation_exception_resource_key;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemediationExceptionResourceKey
    extends RemediationExceptionResourceKey {
  @override
  final String? resourceId;
  @override
  final String? resourceType;

  factory _$RemediationExceptionResourceKey(
          [void Function(RemediationExceptionResourceKeyBuilder)? updates]) =>
      (new RemediationExceptionResourceKeyBuilder()..update(updates))._build();

  _$RemediationExceptionResourceKey._({this.resourceId, this.resourceType})
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
        resourceId == other.resourceId &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, resourceId.hashCode), resourceType.hashCode));
  }
}

class RemediationExceptionResourceKeyBuilder
    implements
        Builder<RemediationExceptionResourceKey,
            RemediationExceptionResourceKeyBuilder> {
  _$RemediationExceptionResourceKey? _$v;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  RemediationExceptionResourceKeyBuilder() {
    RemediationExceptionResourceKey._init(this);
  }

  RemediationExceptionResourceKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
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
            resourceId: resourceId, resourceType: resourceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
