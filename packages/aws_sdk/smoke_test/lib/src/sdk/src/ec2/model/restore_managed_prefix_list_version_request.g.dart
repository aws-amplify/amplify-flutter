// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_managed_prefix_list_version_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreManagedPrefixListVersionRequest
    extends RestoreManagedPrefixListVersionRequest {
  @override
  final bool dryRun;
  @override
  final String? prefixListId;
  @override
  final _i3.Int64 previousVersion;
  @override
  final _i3.Int64 currentVersion;

  factory _$RestoreManagedPrefixListVersionRequest(
          [void Function(RestoreManagedPrefixListVersionRequestBuilder)?
              updates]) =>
      (new RestoreManagedPrefixListVersionRequestBuilder()..update(updates))
          ._build();

  _$RestoreManagedPrefixListVersionRequest._(
      {required this.dryRun,
      this.prefixListId,
      required this.previousVersion,
      required this.currentVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RestoreManagedPrefixListVersionRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(previousVersion,
        r'RestoreManagedPrefixListVersionRequest', 'previousVersion');
    BuiltValueNullFieldError.checkNotNull(currentVersion,
        r'RestoreManagedPrefixListVersionRequest', 'currentVersion');
  }

  @override
  RestoreManagedPrefixListVersionRequest rebuild(
          void Function(RestoreManagedPrefixListVersionRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreManagedPrefixListVersionRequestBuilder toBuilder() =>
      new RestoreManagedPrefixListVersionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreManagedPrefixListVersionRequest &&
        dryRun == other.dryRun &&
        prefixListId == other.prefixListId &&
        previousVersion == other.previousVersion &&
        currentVersion == other.currentVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, previousVersion.hashCode);
    _$hash = $jc(_$hash, currentVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreManagedPrefixListVersionRequestBuilder
    implements
        Builder<RestoreManagedPrefixListVersionRequest,
            RestoreManagedPrefixListVersionRequestBuilder> {
  _$RestoreManagedPrefixListVersionRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  _i3.Int64? _previousVersion;
  _i3.Int64? get previousVersion => _$this._previousVersion;
  set previousVersion(_i3.Int64? previousVersion) =>
      _$this._previousVersion = previousVersion;

  _i3.Int64? _currentVersion;
  _i3.Int64? get currentVersion => _$this._currentVersion;
  set currentVersion(_i3.Int64? currentVersion) =>
      _$this._currentVersion = currentVersion;

  RestoreManagedPrefixListVersionRequestBuilder() {
    RestoreManagedPrefixListVersionRequest._init(this);
  }

  RestoreManagedPrefixListVersionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _prefixListId = $v.prefixListId;
      _previousVersion = $v.previousVersion;
      _currentVersion = $v.currentVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreManagedPrefixListVersionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreManagedPrefixListVersionRequest;
  }

  @override
  void update(
      void Function(RestoreManagedPrefixListVersionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreManagedPrefixListVersionRequest build() => _build();

  _$RestoreManagedPrefixListVersionRequest _build() {
    final _$result = _$v ??
        new _$RestoreManagedPrefixListVersionRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'RestoreManagedPrefixListVersionRequest', 'dryRun'),
            prefixListId: prefixListId,
            previousVersion: BuiltValueNullFieldError.checkNotNull(
                previousVersion,
                r'RestoreManagedPrefixListVersionRequest',
                'previousVersion'),
            currentVersion: BuiltValueNullFieldError.checkNotNull(
                currentVersion,
                r'RestoreManagedPrefixListVersionRequest',
                'currentVersion'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
