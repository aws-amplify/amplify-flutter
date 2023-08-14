// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_security_group_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSecurityGroupResult extends CreateSecurityGroupResult {
  @override
  final String? groupId;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$CreateSecurityGroupResult(
          [void Function(CreateSecurityGroupResultBuilder)? updates]) =>
      (new CreateSecurityGroupResultBuilder()..update(updates))._build();

  _$CreateSecurityGroupResult._({this.groupId, this.tags}) : super._();

  @override
  CreateSecurityGroupResult rebuild(
          void Function(CreateSecurityGroupResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSecurityGroupResultBuilder toBuilder() =>
      new CreateSecurityGroupResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSecurityGroupResult &&
        groupId == other.groupId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSecurityGroupResultBuilder
    implements
        Builder<CreateSecurityGroupResult, CreateSecurityGroupResultBuilder> {
  _$CreateSecurityGroupResult? _$v;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  CreateSecurityGroupResultBuilder();

  CreateSecurityGroupResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupId = $v.groupId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSecurityGroupResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSecurityGroupResult;
  }

  @override
  void update(void Function(CreateSecurityGroupResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSecurityGroupResult build() => _build();

  _$CreateSecurityGroupResult _build() {
    _$CreateSecurityGroupResult _$result;
    try {
      _$result = _$v ??
          new _$CreateSecurityGroupResult._(
              groupId: groupId, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSecurityGroupResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
