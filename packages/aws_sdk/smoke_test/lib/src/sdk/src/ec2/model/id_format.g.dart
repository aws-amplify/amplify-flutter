// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_format.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IdFormat extends IdFormat {
  @override
  final DateTime? deadline;
  @override
  final String? resource;
  @override
  final bool useLongIds;

  factory _$IdFormat([void Function(IdFormatBuilder)? updates]) =>
      (new IdFormatBuilder()..update(updates))._build();

  _$IdFormat._({this.deadline, this.resource, required this.useLongIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        useLongIds, r'IdFormat', 'useLongIds');
  }

  @override
  IdFormat rebuild(void Function(IdFormatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdFormatBuilder toBuilder() => new IdFormatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdFormat &&
        deadline == other.deadline &&
        resource == other.resource &&
        useLongIds == other.useLongIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deadline.hashCode);
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jc(_$hash, useLongIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IdFormatBuilder implements Builder<IdFormat, IdFormatBuilder> {
  _$IdFormat? _$v;

  DateTime? _deadline;
  DateTime? get deadline => _$this._deadline;
  set deadline(DateTime? deadline) => _$this._deadline = deadline;

  String? _resource;
  String? get resource => _$this._resource;
  set resource(String? resource) => _$this._resource = resource;

  bool? _useLongIds;
  bool? get useLongIds => _$this._useLongIds;
  set useLongIds(bool? useLongIds) => _$this._useLongIds = useLongIds;

  IdFormatBuilder() {
    IdFormat._init(this);
  }

  IdFormatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deadline = $v.deadline;
      _resource = $v.resource;
      _useLongIds = $v.useLongIds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdFormat other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdFormat;
  }

  @override
  void update(void Function(IdFormatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdFormat build() => _build();

  _$IdFormat _build() {
    final _$result = _$v ??
        new _$IdFormat._(
            deadline: deadline,
            resource: resource,
            useLongIds: BuiltValueNullFieldError.checkNotNull(
                useLongIds, r'IdFormat', 'useLongIds'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
