// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessInstance extends VerifiedAccessInstance {
  @override
  final String? verifiedAccessInstanceId;
  @override
  final String? description;
  @override
  final _i2.BuiltList<VerifiedAccessTrustProviderCondensed>?
      verifiedAccessTrustProviders;
  @override
  final String? creationTime;
  @override
  final String? lastUpdatedTime;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$VerifiedAccessInstance(
          [void Function(VerifiedAccessInstanceBuilder)? updates]) =>
      (new VerifiedAccessInstanceBuilder()..update(updates))._build();

  _$VerifiedAccessInstance._(
      {this.verifiedAccessInstanceId,
      this.description,
      this.verifiedAccessTrustProviders,
      this.creationTime,
      this.lastUpdatedTime,
      this.tags})
      : super._();

  @override
  VerifiedAccessInstance rebuild(
          void Function(VerifiedAccessInstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessInstanceBuilder toBuilder() =>
      new VerifiedAccessInstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessInstance &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        description == other.description &&
        verifiedAccessTrustProviders == other.verifiedAccessTrustProviders &&
        creationTime == other.creationTime &&
        lastUpdatedTime == other.lastUpdatedTime &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, verifiedAccessTrustProviders.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, lastUpdatedTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessInstanceBuilder
    implements Builder<VerifiedAccessInstance, VerifiedAccessInstanceBuilder> {
  _$VerifiedAccessInstance? _$v;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<VerifiedAccessTrustProviderCondensed>?
      _verifiedAccessTrustProviders;
  _i2.ListBuilder<VerifiedAccessTrustProviderCondensed>
      get verifiedAccessTrustProviders =>
          _$this._verifiedAccessTrustProviders ??=
              new _i2.ListBuilder<VerifiedAccessTrustProviderCondensed>();
  set verifiedAccessTrustProviders(
          _i2.ListBuilder<VerifiedAccessTrustProviderCondensed>?
              verifiedAccessTrustProviders) =>
      _$this._verifiedAccessTrustProviders = verifiedAccessTrustProviders;

  String? _creationTime;
  String? get creationTime => _$this._creationTime;
  set creationTime(String? creationTime) => _$this._creationTime = creationTime;

  String? _lastUpdatedTime;
  String? get lastUpdatedTime => _$this._lastUpdatedTime;
  set lastUpdatedTime(String? lastUpdatedTime) =>
      _$this._lastUpdatedTime = lastUpdatedTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  VerifiedAccessInstanceBuilder();

  VerifiedAccessInstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _description = $v.description;
      _verifiedAccessTrustProviders =
          $v.verifiedAccessTrustProviders?.toBuilder();
      _creationTime = $v.creationTime;
      _lastUpdatedTime = $v.lastUpdatedTime;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessInstance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessInstance;
  }

  @override
  void update(void Function(VerifiedAccessInstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessInstance build() => _build();

  _$VerifiedAccessInstance _build() {
    _$VerifiedAccessInstance _$result;
    try {
      _$result = _$v ??
          new _$VerifiedAccessInstance._(
              verifiedAccessInstanceId: verifiedAccessInstanceId,
              description: description,
              verifiedAccessTrustProviders:
                  _verifiedAccessTrustProviders?.build(),
              creationTime: creationTime,
              lastUpdatedTime: lastUpdatedTime,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessTrustProviders';
        _verifiedAccessTrustProviders?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedAccessInstance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
