// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_group_identifier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SecurityGroupIdentifier extends SecurityGroupIdentifier {
  @override
  final String? groupId;
  @override
  final String? groupName;

  factory _$SecurityGroupIdentifier(
          [void Function(SecurityGroupIdentifierBuilder)? updates]) =>
      (new SecurityGroupIdentifierBuilder()..update(updates))._build();

  _$SecurityGroupIdentifier._({this.groupId, this.groupName}) : super._();

  @override
  SecurityGroupIdentifier rebuild(
          void Function(SecurityGroupIdentifierBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecurityGroupIdentifierBuilder toBuilder() =>
      new SecurityGroupIdentifierBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecurityGroupIdentifier &&
        groupId == other.groupId &&
        groupName == other.groupName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SecurityGroupIdentifierBuilder
    implements
        Builder<SecurityGroupIdentifier, SecurityGroupIdentifierBuilder> {
  _$SecurityGroupIdentifier? _$v;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  SecurityGroupIdentifierBuilder();

  SecurityGroupIdentifierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupId = $v.groupId;
      _groupName = $v.groupName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecurityGroupIdentifier other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SecurityGroupIdentifier;
  }

  @override
  void update(void Function(SecurityGroupIdentifierBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SecurityGroupIdentifier build() => _build();

  _$SecurityGroupIdentifier _build() {
    final _$result = _$v ??
        new _$SecurityGroupIdentifier._(groupId: groupId, groupName: groupName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
