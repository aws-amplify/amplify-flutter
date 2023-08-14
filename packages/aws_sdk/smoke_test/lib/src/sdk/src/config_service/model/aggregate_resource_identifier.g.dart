// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregate_resource_identifier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateResourceIdentifier extends AggregateResourceIdentifier {
  @override
  final String sourceAccountId;
  @override
  final String sourceRegion;
  @override
  final String resourceId;
  @override
  final ResourceType resourceType;
  @override
  final String? resourceName;

  factory _$AggregateResourceIdentifier(
          [void Function(AggregateResourceIdentifierBuilder)? updates]) =>
      (new AggregateResourceIdentifierBuilder()..update(updates))._build();

  _$AggregateResourceIdentifier._(
      {required this.sourceAccountId,
      required this.sourceRegion,
      required this.resourceId,
      required this.resourceType,
      this.resourceName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sourceAccountId, r'AggregateResourceIdentifier', 'sourceAccountId');
    BuiltValueNullFieldError.checkNotNull(
        sourceRegion, r'AggregateResourceIdentifier', 'sourceRegion');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'AggregateResourceIdentifier', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'AggregateResourceIdentifier', 'resourceType');
  }

  @override
  AggregateResourceIdentifier rebuild(
          void Function(AggregateResourceIdentifierBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregateResourceIdentifierBuilder toBuilder() =>
      new AggregateResourceIdentifierBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregateResourceIdentifier &&
        sourceAccountId == other.sourceAccountId &&
        sourceRegion == other.sourceRegion &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType &&
        resourceName == other.resourceName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceAccountId.hashCode);
    _$hash = $jc(_$hash, sourceRegion.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AggregateResourceIdentifierBuilder
    implements
        Builder<AggregateResourceIdentifier,
            AggregateResourceIdentifierBuilder> {
  _$AggregateResourceIdentifier? _$v;

  String? _sourceAccountId;
  String? get sourceAccountId => _$this._sourceAccountId;
  set sourceAccountId(String? sourceAccountId) =>
      _$this._sourceAccountId = sourceAccountId;

  String? _sourceRegion;
  String? get sourceRegion => _$this._sourceRegion;
  set sourceRegion(String? sourceRegion) => _$this._sourceRegion = sourceRegion;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  ResourceType? _resourceType;
  ResourceType? get resourceType => _$this._resourceType;
  set resourceType(ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

  AggregateResourceIdentifierBuilder();

  AggregateResourceIdentifierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceAccountId = $v.sourceAccountId;
      _sourceRegion = $v.sourceRegion;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _resourceName = $v.resourceName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregateResourceIdentifier other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregateResourceIdentifier;
  }

  @override
  void update(void Function(AggregateResourceIdentifierBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregateResourceIdentifier build() => _build();

  _$AggregateResourceIdentifier _build() {
    final _$result = _$v ??
        new _$AggregateResourceIdentifier._(
            sourceAccountId: BuiltValueNullFieldError.checkNotNull(
                sourceAccountId,
                r'AggregateResourceIdentifier',
                'sourceAccountId'),
            sourceRegion: BuiltValueNullFieldError.checkNotNull(
                sourceRegion, r'AggregateResourceIdentifier', 'sourceRegion'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'AggregateResourceIdentifier', 'resourceId'),
            resourceType: BuiltValueNullFieldError.checkNotNull(
                resourceType, r'AggregateResourceIdentifier', 'resourceType'),
            resourceName: resourceName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
