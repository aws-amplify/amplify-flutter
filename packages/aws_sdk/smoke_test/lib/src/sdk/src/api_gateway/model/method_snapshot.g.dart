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
    var _$hash = 0;
    _$hash = $jc(_$hash, apiKeyRequired.hashCode);
    _$hash = $jc(_$hash, authorizationType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
