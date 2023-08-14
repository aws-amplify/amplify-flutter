// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_interface_permission_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkInterfacePermissionResult
    extends DeleteNetworkInterfacePermissionResult {
  @override
  final bool return_;

  factory _$DeleteNetworkInterfacePermissionResult(
          [void Function(DeleteNetworkInterfacePermissionResultBuilder)?
              updates]) =>
      (new DeleteNetworkInterfacePermissionResultBuilder()..update(updates))
          ._build();

  _$DeleteNetworkInterfacePermissionResult._({required this.return_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'DeleteNetworkInterfacePermissionResult', 'return_');
  }

  @override
  DeleteNetworkInterfacePermissionResult rebuild(
          void Function(DeleteNetworkInterfacePermissionResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkInterfacePermissionResultBuilder toBuilder() =>
      new DeleteNetworkInterfacePermissionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkInterfacePermissionResult &&
        return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkInterfacePermissionResultBuilder
    implements
        Builder<DeleteNetworkInterfacePermissionResult,
            DeleteNetworkInterfacePermissionResultBuilder> {
  _$DeleteNetworkInterfacePermissionResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  DeleteNetworkInterfacePermissionResultBuilder() {
    DeleteNetworkInterfacePermissionResult._init(this);
  }

  DeleteNetworkInterfacePermissionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkInterfacePermissionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkInterfacePermissionResult;
  }

  @override
  void update(
      void Function(DeleteNetworkInterfacePermissionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkInterfacePermissionResult build() => _build();

  _$DeleteNetworkInterfacePermissionResult _build() {
    final _$result = _$v ??
        new _$DeleteNetworkInterfacePermissionResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'DeleteNetworkInterfacePermissionResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
