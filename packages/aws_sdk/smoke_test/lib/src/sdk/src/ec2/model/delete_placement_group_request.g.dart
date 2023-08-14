// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_placement_group_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeletePlacementGroupRequest extends DeletePlacementGroupRequest {
  @override
  final bool dryRun;
  @override
  final String? groupName;

  factory _$DeletePlacementGroupRequest(
          [void Function(DeletePlacementGroupRequestBuilder)? updates]) =>
      (new DeletePlacementGroupRequestBuilder()..update(updates))._build();

  _$DeletePlacementGroupRequest._({required this.dryRun, this.groupName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeletePlacementGroupRequest', 'dryRun');
  }

  @override
  DeletePlacementGroupRequest rebuild(
          void Function(DeletePlacementGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletePlacementGroupRequestBuilder toBuilder() =>
      new DeletePlacementGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletePlacementGroupRequest &&
        dryRun == other.dryRun &&
        groupName == other.groupName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeletePlacementGroupRequestBuilder
    implements
        Builder<DeletePlacementGroupRequest,
            DeletePlacementGroupRequestBuilder> {
  _$DeletePlacementGroupRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  DeletePlacementGroupRequestBuilder() {
    DeletePlacementGroupRequest._init(this);
  }

  DeletePlacementGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _groupName = $v.groupName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletePlacementGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletePlacementGroupRequest;
  }

  @override
  void update(void Function(DeletePlacementGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletePlacementGroupRequest build() => _build();

  _$DeletePlacementGroupRequest _build() {
    final _$result = _$v ??
        new _$DeletePlacementGroupRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeletePlacementGroupRequest', 'dryRun'),
            groupName: groupName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
