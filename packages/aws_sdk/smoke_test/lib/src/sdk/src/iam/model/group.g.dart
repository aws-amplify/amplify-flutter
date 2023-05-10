// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.group;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Group extends Group {
  @override
  final String path;
  @override
  final String groupName;
  @override
  final String groupId;
  @override
  final String arn;
  @override
  final DateTime createDate;

  factory _$Group([void Function(GroupBuilder)? updates]) =>
      (new GroupBuilder()..update(updates))._build();

  _$Group._(
      {required this.path,
      required this.groupName,
      required this.groupId,
      required this.arn,
      required this.createDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(path, r'Group', 'path');
    BuiltValueNullFieldError.checkNotNull(groupName, r'Group', 'groupName');
    BuiltValueNullFieldError.checkNotNull(groupId, r'Group', 'groupId');
    BuiltValueNullFieldError.checkNotNull(arn, r'Group', 'arn');
    BuiltValueNullFieldError.checkNotNull(createDate, r'Group', 'createDate');
  }

  @override
  Group rebuild(void Function(GroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupBuilder toBuilder() => new GroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Group &&
        path == other.path &&
        groupName == other.groupName &&
        groupId == other.groupId &&
        arn == other.arn &&
        createDate == other.createDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GroupBuilder implements Builder<Group, GroupBuilder> {
  _$Group? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  GroupBuilder() {
    Group._init(this);
  }

  GroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _groupName = $v.groupName;
      _groupId = $v.groupId;
      _arn = $v.arn;
      _createDate = $v.createDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Group other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Group;
  }

  @override
  void update(void Function(GroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Group build() => _build();

  _$Group _build() {
    final _$result = _$v ??
        new _$Group._(
            path: BuiltValueNullFieldError.checkNotNull(path, r'Group', 'path'),
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'Group', 'groupName'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, r'Group', 'groupId'),
            arn: BuiltValueNullFieldError.checkNotNull(arn, r'Group', 'arn'),
            createDate: BuiltValueNullFieldError.checkNotNull(
                createDate, r'Group', 'createDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
