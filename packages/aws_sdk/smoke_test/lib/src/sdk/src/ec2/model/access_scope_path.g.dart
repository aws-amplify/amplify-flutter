// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_scope_path.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessScopePath extends AccessScopePath {
  @override
  final PathStatement? source;
  @override
  final PathStatement? destination;
  @override
  final _i2.BuiltList<ThroughResourcesStatement>? throughResources;

  factory _$AccessScopePath([void Function(AccessScopePathBuilder)? updates]) =>
      (new AccessScopePathBuilder()..update(updates))._build();

  _$AccessScopePath._({this.source, this.destination, this.throughResources})
      : super._();

  @override
  AccessScopePath rebuild(void Function(AccessScopePathBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessScopePathBuilder toBuilder() =>
      new AccessScopePathBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessScopePath &&
        source == other.source &&
        destination == other.destination &&
        throughResources == other.throughResources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, throughResources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccessScopePathBuilder
    implements Builder<AccessScopePath, AccessScopePathBuilder> {
  _$AccessScopePath? _$v;

  PathStatementBuilder? _source;
  PathStatementBuilder get source =>
      _$this._source ??= new PathStatementBuilder();
  set source(PathStatementBuilder? source) => _$this._source = source;

  PathStatementBuilder? _destination;
  PathStatementBuilder get destination =>
      _$this._destination ??= new PathStatementBuilder();
  set destination(PathStatementBuilder? destination) =>
      _$this._destination = destination;

  _i2.ListBuilder<ThroughResourcesStatement>? _throughResources;
  _i2.ListBuilder<ThroughResourcesStatement> get throughResources =>
      _$this._throughResources ??=
          new _i2.ListBuilder<ThroughResourcesStatement>();
  set throughResources(
          _i2.ListBuilder<ThroughResourcesStatement>? throughResources) =>
      _$this._throughResources = throughResources;

  AccessScopePathBuilder();

  AccessScopePathBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source = $v.source?.toBuilder();
      _destination = $v.destination?.toBuilder();
      _throughResources = $v.throughResources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessScopePath other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessScopePath;
  }

  @override
  void update(void Function(AccessScopePathBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessScopePath build() => _build();

  _$AccessScopePath _build() {
    _$AccessScopePath _$result;
    try {
      _$result = _$v ??
          new _$AccessScopePath._(
              source: _source?.build(),
              destination: _destination?.build(),
              throughResources: _throughResources?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'source';
        _source?.build();
        _$failedField = 'destination';
        _destination?.build();
        _$failedField = 'throughResources';
        _throughResources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccessScopePath', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
