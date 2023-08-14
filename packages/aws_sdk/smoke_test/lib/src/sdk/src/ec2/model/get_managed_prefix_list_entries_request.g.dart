// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_managed_prefix_list_entries_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetManagedPrefixListEntriesRequest
    extends GetManagedPrefixListEntriesRequest {
  @override
  final bool dryRun;
  @override
  final String? prefixListId;
  @override
  final _i3.Int64 targetVersion;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$GetManagedPrefixListEntriesRequest(
          [void Function(GetManagedPrefixListEntriesRequestBuilder)?
              updates]) =>
      (new GetManagedPrefixListEntriesRequestBuilder()..update(updates))
          ._build();

  _$GetManagedPrefixListEntriesRequest._(
      {required this.dryRun,
      this.prefixListId,
      required this.targetVersion,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetManagedPrefixListEntriesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        targetVersion, r'GetManagedPrefixListEntriesRequest', 'targetVersion');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetManagedPrefixListEntriesRequest', 'maxResults');
  }

  @override
  GetManagedPrefixListEntriesRequest rebuild(
          void Function(GetManagedPrefixListEntriesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetManagedPrefixListEntriesRequestBuilder toBuilder() =>
      new GetManagedPrefixListEntriesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetManagedPrefixListEntriesRequest &&
        dryRun == other.dryRun &&
        prefixListId == other.prefixListId &&
        targetVersion == other.targetVersion &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, targetVersion.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetManagedPrefixListEntriesRequestBuilder
    implements
        Builder<GetManagedPrefixListEntriesRequest,
            GetManagedPrefixListEntriesRequestBuilder> {
  _$GetManagedPrefixListEntriesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  _i3.Int64? _targetVersion;
  _i3.Int64? get targetVersion => _$this._targetVersion;
  set targetVersion(_i3.Int64? targetVersion) =>
      _$this._targetVersion = targetVersion;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetManagedPrefixListEntriesRequestBuilder() {
    GetManagedPrefixListEntriesRequest._init(this);
  }

  GetManagedPrefixListEntriesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _prefixListId = $v.prefixListId;
      _targetVersion = $v.targetVersion;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetManagedPrefixListEntriesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetManagedPrefixListEntriesRequest;
  }

  @override
  void update(
      void Function(GetManagedPrefixListEntriesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetManagedPrefixListEntriesRequest build() => _build();

  _$GetManagedPrefixListEntriesRequest _build() {
    final _$result = _$v ??
        new _$GetManagedPrefixListEntriesRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetManagedPrefixListEntriesRequest', 'dryRun'),
            prefixListId: prefixListId,
            targetVersion: BuiltValueNullFieldError.checkNotNull(targetVersion,
                r'GetManagedPrefixListEntriesRequest', 'targetVersion'),
            maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                r'GetManagedPrefixListEntriesRequest', 'maxResults'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
