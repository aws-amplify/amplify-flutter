// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_identifier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupIdentifier extends GroupIdentifier {
  @override
  final String? groupName;
  @override
  final String? groupId;

  factory _$GroupIdentifier([void Function(GroupIdentifierBuilder)? updates]) =>
      (new GroupIdentifierBuilder()..update(updates))._build();

  _$GroupIdentifier._({this.groupName, this.groupId}) : super._();

  @override
  GroupIdentifier rebuild(void Function(GroupIdentifierBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupIdentifierBuilder toBuilder() =>
      new GroupIdentifierBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupIdentifier &&
        groupName == other.groupName &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GroupIdentifierBuilder
    implements Builder<GroupIdentifier, GroupIdentifierBuilder> {
  _$GroupIdentifier? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  GroupIdentifierBuilder();

  GroupIdentifierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _groupId = $v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupIdentifier other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupIdentifier;
  }

  @override
  void update(void Function(GroupIdentifierBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupIdentifier build() => _build();

  _$GroupIdentifier _build() {
    final _$result =
        _$v ?? new _$GroupIdentifier._(groupName: groupName, groupId: groupId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
