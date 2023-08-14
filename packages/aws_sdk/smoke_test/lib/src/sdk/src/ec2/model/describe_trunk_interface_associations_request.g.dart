// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_trunk_interface_associations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTrunkInterfaceAssociationsRequest
    extends DescribeTrunkInterfaceAssociationsRequest {
  @override
  final _i3.BuiltList<String>? associationIds;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeTrunkInterfaceAssociationsRequest(
          [void Function(DescribeTrunkInterfaceAssociationsRequestBuilder)?
              updates]) =>
      (new DescribeTrunkInterfaceAssociationsRequestBuilder()..update(updates))
          ._build();

  _$DescribeTrunkInterfaceAssociationsRequest._(
      {this.associationIds,
      required this.dryRun,
      this.filters,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeTrunkInterfaceAssociationsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeTrunkInterfaceAssociationsRequest', 'maxResults');
  }

  @override
  DescribeTrunkInterfaceAssociationsRequest rebuild(
          void Function(DescribeTrunkInterfaceAssociationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTrunkInterfaceAssociationsRequestBuilder toBuilder() =>
      new DescribeTrunkInterfaceAssociationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTrunkInterfaceAssociationsRequest &&
        associationIds == other.associationIds &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTrunkInterfaceAssociationsRequestBuilder
    implements
        Builder<DescribeTrunkInterfaceAssociationsRequest,
            DescribeTrunkInterfaceAssociationsRequestBuilder> {
  _$DescribeTrunkInterfaceAssociationsRequest? _$v;

  _i3.ListBuilder<String>? _associationIds;
  _i3.ListBuilder<String> get associationIds =>
      _$this._associationIds ??= new _i3.ListBuilder<String>();
  set associationIds(_i3.ListBuilder<String>? associationIds) =>
      _$this._associationIds = associationIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeTrunkInterfaceAssociationsRequestBuilder() {
    DescribeTrunkInterfaceAssociationsRequest._init(this);
  }

  DescribeTrunkInterfaceAssociationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationIds = $v.associationIds?.toBuilder();
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTrunkInterfaceAssociationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTrunkInterfaceAssociationsRequest;
  }

  @override
  void update(
      void Function(DescribeTrunkInterfaceAssociationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTrunkInterfaceAssociationsRequest build() => _build();

  _$DescribeTrunkInterfaceAssociationsRequest _build() {
    _$DescribeTrunkInterfaceAssociationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeTrunkInterfaceAssociationsRequest._(
              associationIds: _associationIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeTrunkInterfaceAssociationsRequest', 'dryRun'),
              filters: _filters?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeTrunkInterfaceAssociationsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associationIds';
        _associationIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTrunkInterfaceAssociationsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
