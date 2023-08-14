// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_insights_access_scope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInsightsAccessScope extends NetworkInsightsAccessScope {
  @override
  final String? networkInsightsAccessScopeId;
  @override
  final String? networkInsightsAccessScopeArn;
  @override
  final DateTime? createdDate;
  @override
  final DateTime? updatedDate;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$NetworkInsightsAccessScope(
          [void Function(NetworkInsightsAccessScopeBuilder)? updates]) =>
      (new NetworkInsightsAccessScopeBuilder()..update(updates))._build();

  _$NetworkInsightsAccessScope._(
      {this.networkInsightsAccessScopeId,
      this.networkInsightsAccessScopeArn,
      this.createdDate,
      this.updatedDate,
      this.tags})
      : super._();

  @override
  NetworkInsightsAccessScope rebuild(
          void Function(NetworkInsightsAccessScopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInsightsAccessScopeBuilder toBuilder() =>
      new NetworkInsightsAccessScopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInsightsAccessScope &&
        networkInsightsAccessScopeId == other.networkInsightsAccessScopeId &&
        networkInsightsAccessScopeArn == other.networkInsightsAccessScopeArn &&
        createdDate == other.createdDate &&
        updatedDate == other.updatedDate &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeId.hashCode);
    _$hash = $jc(_$hash, networkInsightsAccessScopeArn.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, updatedDate.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInsightsAccessScopeBuilder
    implements
        Builder<NetworkInsightsAccessScope, NetworkInsightsAccessScopeBuilder> {
  _$NetworkInsightsAccessScope? _$v;

  String? _networkInsightsAccessScopeId;
  String? get networkInsightsAccessScopeId =>
      _$this._networkInsightsAccessScopeId;
  set networkInsightsAccessScopeId(String? networkInsightsAccessScopeId) =>
      _$this._networkInsightsAccessScopeId = networkInsightsAccessScopeId;

  String? _networkInsightsAccessScopeArn;
  String? get networkInsightsAccessScopeArn =>
      _$this._networkInsightsAccessScopeArn;
  set networkInsightsAccessScopeArn(String? networkInsightsAccessScopeArn) =>
      _$this._networkInsightsAccessScopeArn = networkInsightsAccessScopeArn;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  DateTime? _updatedDate;
  DateTime? get updatedDate => _$this._updatedDate;
  set updatedDate(DateTime? updatedDate) => _$this._updatedDate = updatedDate;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  NetworkInsightsAccessScopeBuilder();

  NetworkInsightsAccessScopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeId = $v.networkInsightsAccessScopeId;
      _networkInsightsAccessScopeArn = $v.networkInsightsAccessScopeArn;
      _createdDate = $v.createdDate;
      _updatedDate = $v.updatedDate;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInsightsAccessScope other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInsightsAccessScope;
  }

  @override
  void update(void Function(NetworkInsightsAccessScopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInsightsAccessScope build() => _build();

  _$NetworkInsightsAccessScope _build() {
    _$NetworkInsightsAccessScope _$result;
    try {
      _$result = _$v ??
          new _$NetworkInsightsAccessScope._(
              networkInsightsAccessScopeId: networkInsightsAccessScopeId,
              networkInsightsAccessScopeArn: networkInsightsAccessScopeArn,
              createdDate: createdDate,
              updatedDate: updatedDate,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInsightsAccessScope', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
