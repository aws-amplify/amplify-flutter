// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'method_snapshot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MethodSnapshot extends MethodSnapshot {
  @override
  final String? authorizationType;
  @override
  final bool apiKeyRequired;

  factory _$MethodSnapshot([void Function(MethodSnapshotBuilder)? updates]) =>
      (new MethodSnapshotBuilder()..update(updates))._build();

  _$MethodSnapshot._({this.authorizationType, required this.apiKeyRequired})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        apiKeyRequired, r'MethodSnapshot', 'apiKeyRequired');
  }

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
        authorizationType == other.authorizationType &&
        apiKeyRequired == other.apiKeyRequired;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorizationType.hashCode);
    _$hash = $jc(_$hash, apiKeyRequired.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MethodSnapshotBuilder
    implements Builder<MethodSnapshot, MethodSnapshotBuilder> {
  _$MethodSnapshot? _$v;

  String? _authorizationType;
  String? get authorizationType => _$this._authorizationType;
  set authorizationType(String? authorizationType) =>
      _$this._authorizationType = authorizationType;

  bool? _apiKeyRequired;
  bool? get apiKeyRequired => _$this._apiKeyRequired;
  set apiKeyRequired(bool? apiKeyRequired) =>
      _$this._apiKeyRequired = apiKeyRequired;

  MethodSnapshotBuilder() {
    MethodSnapshot._init(this);
  }

  MethodSnapshotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizationType = $v.authorizationType;
      _apiKeyRequired = $v.apiKeyRequired;
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
            authorizationType: authorizationType,
            apiKeyRequired: BuiltValueNullFieldError.checkNotNull(
                apiKeyRequired, r'MethodSnapshot', 'apiKeyRequired'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
