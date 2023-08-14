// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_managed_prefix_list_associations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetManagedPrefixListAssociationsRequest
    extends GetManagedPrefixListAssociationsRequest {
  @override
  final bool dryRun;
  @override
  final String? prefixListId;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$GetManagedPrefixListAssociationsRequest(
          [void Function(GetManagedPrefixListAssociationsRequestBuilder)?
              updates]) =>
      (new GetManagedPrefixListAssociationsRequestBuilder()..update(updates))
          ._build();

  _$GetManagedPrefixListAssociationsRequest._(
      {required this.dryRun,
      this.prefixListId,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetManagedPrefixListAssociationsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetManagedPrefixListAssociationsRequest', 'maxResults');
  }

  @override
  GetManagedPrefixListAssociationsRequest rebuild(
          void Function(GetManagedPrefixListAssociationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetManagedPrefixListAssociationsRequestBuilder toBuilder() =>
      new GetManagedPrefixListAssociationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetManagedPrefixListAssociationsRequest &&
        dryRun == other.dryRun &&
        prefixListId == other.prefixListId &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetManagedPrefixListAssociationsRequestBuilder
    implements
        Builder<GetManagedPrefixListAssociationsRequest,
            GetManagedPrefixListAssociationsRequestBuilder> {
  _$GetManagedPrefixListAssociationsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetManagedPrefixListAssociationsRequestBuilder() {
    GetManagedPrefixListAssociationsRequest._init(this);
  }

  GetManagedPrefixListAssociationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _prefixListId = $v.prefixListId;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetManagedPrefixListAssociationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetManagedPrefixListAssociationsRequest;
  }

  @override
  void update(
      void Function(GetManagedPrefixListAssociationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetManagedPrefixListAssociationsRequest build() => _build();

  _$GetManagedPrefixListAssociationsRequest _build() {
    final _$result = _$v ??
        new _$GetManagedPrefixListAssociationsRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetManagedPrefixListAssociationsRequest', 'dryRun'),
            prefixListId: prefixListId,
            maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                r'GetManagedPrefixListAssociationsRequest', 'maxResults'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
