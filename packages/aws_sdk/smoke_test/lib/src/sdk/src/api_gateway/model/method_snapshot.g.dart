// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.method_snapshot;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MethodSnapshot extends MethodSnapshot {
  @override
  final bool? apiKeyRequired;
  @override
  final String? authorizationType;

  factory _$MethodSnapshot([void Function(MethodSnapshotBuilder)? updates]) =>
      (new MethodSnapshotBuilder()..update(updates))._build();

  _$MethodSnapshot._({this.apiKeyRequired, this.authorizationType}) : super._();

  @override
  MethodSnapshot rebuild(void Function(MethodSnapshotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MethodSnapshotBuilder toBuilder() =>
      new MethodSnapshotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MethodSnapshot &&
        apiKeyRequired == other.apiKeyRequired &&
        authorizationType == other.authorizationType;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, apiKeyRequired.hashCode), authorizationType.hashCode));
  }
}

class MethodSnapshotBuilder
    implements Builder<MethodSnapshot, MethodSnapshotBuilder> {
  _$MethodSnapshot? _$v;

  bool? _apiKeyRequired;
  bool? get apiKeyRequired => _$this._apiKeyRequired;
  set apiKeyRequired(bool? apiKeyRequired) =>
      _$this._apiKeyRequired = apiKeyRequired;

  String? _authorizationType;
  String? get authorizationType => _$this._authorizationType;
  set authorizationType(String? authorizationType) =>
      _$this._authorizationType = authorizationType;

  MethodSnapshotBuilder() {
    MethodSnapshot._init(this);
  }

  MethodSnapshotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKeyRequired = $v.apiKeyRequired;
      _authorizationType = $v.authorizationType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MethodSnapshot other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MethodSnapshot;
  }

  @override
  void update(void Function(MethodSnapshotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MethodSnapshot build() => _build();

  _$MethodSnapshot _build() {
    final _$result = _$v ??
        new _$MethodSnapshot._(
            apiKeyRequired: apiKeyRequired,
            authorizationType: authorizationType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
