// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessGroup extends VerifiedAccessGroup {
  @override
  final String? verifiedAccessGroupId;
  @override
  final String? verifiedAccessInstanceId;
  @override
  final String? description;
  @override
  final String? owner;
  @override
  final String? verifiedAccessGroupArn;
  @override
  final String? creationTime;
  @override
  final String? lastUpdatedTime;
  @override
  final String? deletionTime;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$VerifiedAccessGroup(
          [void Function(VerifiedAccessGroupBuilder)? updates]) =>
      (new VerifiedAccessGroupBuilder()..update(updates))._build();

  _$VerifiedAccessGroup._(
      {this.verifiedAccessGroupId,
      this.verifiedAccessInstanceId,
      this.description,
      this.owner,
      this.verifiedAccessGroupArn,
      this.creationTime,
      this.lastUpdatedTime,
      this.deletionTime,
      this.tags})
      : super._();

  @override
  VerifiedAccessGroup rebuild(
          void Function(VerifiedAccessGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessGroupBuilder toBuilder() =>
      new VerifiedAccessGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessGroup &&
        verifiedAccessGroupId == other.verifiedAccessGroupId &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        description == other.description &&
        owner == other.owner &&
        verifiedAccessGroupArn == other.verifiedAccessGroupArn &&
        creationTime == other.creationTime &&
        lastUpdatedTime == other.lastUpdatedTime &&
        deletionTime == other.deletionTime &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessGroupId.hashCode);
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, verifiedAccessGroupArn.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, lastUpdatedTime.hashCode);
    _$hash = $jc(_$hash, deletionTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessGroupBuilder
    implements Builder<VerifiedAccessGroup, VerifiedAccessGroupBuilder> {
  _$VerifiedAccessGroup? _$v;

  String? _verifiedAccessGroupId;
  String? get verifiedAccessGroupId => _$this._verifiedAccessGroupId;
  set verifiedAccessGroupId(String? verifiedAccessGroupId) =>
      _$this._verifiedAccessGroupId = verifiedAccessGroupId;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _verifiedAccessGroupArn;
  String? get verifiedAccessGroupArn => _$this._verifiedAccessGroupArn;
  set verifiedAccessGroupArn(String? verifiedAccessGroupArn) =>
      _$this._verifiedAccessGroupArn = verifiedAccessGroupArn;

  String? _creationTime;
  String? get creationTime => _$this._creationTime;
  set creationTime(String? creationTime) => _$this._creationTime = creationTime;

  String? _lastUpdatedTime;
  String? get lastUpdatedTime => _$this._lastUpdatedTime;
  set lastUpdatedTime(String? lastUpdatedTime) =>
      _$this._lastUpdatedTime = lastUpdatedTime;

  String? _deletionTime;
  String? get deletionTime => _$this._deletionTime;
  set deletionTime(String? deletionTime) => _$this._deletionTime = deletionTime;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  VerifiedAccessGroupBuilder();

  VerifiedAccessGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessGroupId = $v.verifiedAccessGroupId;
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _description = $v.description;
      _owner = $v.owner;
      _verifiedAccessGroupArn = $v.verifiedAccessGroupArn;
      _creationTime = $v.creationTime;
      _lastUpdatedTime = $v.lastUpdatedTime;
      _deletionTime = $v.deletionTime;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessGroup;
  }

  @override
  void update(void Function(VerifiedAccessGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessGroup build() => _build();

  _$VerifiedAccessGroup _build() {
    _$VerifiedAccessGroup _$result;
    try {
      _$result = _$v ??
          new _$VerifiedAccessGroup._(
              verifiedAccessGroupId: verifiedAccessGroupId,
              verifiedAccessInstanceId: verifiedAccessInstanceId,
              description: description,
              owner: owner,
              verifiedAccessGroupArn: verifiedAccessGroupArn,
              creationTime: creationTime,
              lastUpdatedTime: lastUpdatedTime,
              deletionTime: deletionTime,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedAccessGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
