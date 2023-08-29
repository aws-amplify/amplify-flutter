// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_managed_prefix_list_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteManagedPrefixListRequest extends DeleteManagedPrefixListRequest {
  @override
  final bool dryRun;
  @override
  final String? prefixListId;

  factory _$DeleteManagedPrefixListRequest(
          [void Function(DeleteManagedPrefixListRequestBuilder)? updates]) =>
      (new DeleteManagedPrefixListRequestBuilder()..update(updates))._build();

  _$DeleteManagedPrefixListRequest._({required this.dryRun, this.prefixListId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteManagedPrefixListRequest', 'dryRun');
  }

  @override
  DeleteManagedPrefixListRequest rebuild(
          void Function(DeleteManagedPrefixListRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteManagedPrefixListRequestBuilder toBuilder() =>
      new DeleteManagedPrefixListRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteManagedPrefixListRequest &&
        dryRun == other.dryRun &&
        prefixListId == other.prefixListId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteManagedPrefixListRequestBuilder
    implements
        Builder<DeleteManagedPrefixListRequest,
            DeleteManagedPrefixListRequestBuilder> {
  _$DeleteManagedPrefixListRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  DeleteManagedPrefixListRequestBuilder() {
    DeleteManagedPrefixListRequest._init(this);
  }

  DeleteManagedPrefixListRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _prefixListId = $v.prefixListId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteManagedPrefixListRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteManagedPrefixListRequest;
  }

  @override
  void update(void Function(DeleteManagedPrefixListRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteManagedPrefixListRequest build() => _build();

  _$DeleteManagedPrefixListRequest _build() {
    final _$result = _$v ??
        new _$DeleteManagedPrefixListRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteManagedPrefixListRequest', 'dryRun'),
            prefixListId: prefixListId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
