// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_credit_specifications_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceCreditSpecificationsRequest
    extends DescribeInstanceCreditSpecificationsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? instanceIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeInstanceCreditSpecificationsRequest(
          [void Function(DescribeInstanceCreditSpecificationsRequestBuilder)?
              updates]) =>
      (new DescribeInstanceCreditSpecificationsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeInstanceCreditSpecificationsRequest._(
      {required this.dryRun,
      this.filters,
      this.instanceIds,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeInstanceCreditSpecificationsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeInstanceCreditSpecificationsRequest', 'maxResults');
  }

  @override
  DescribeInstanceCreditSpecificationsRequest rebuild(
          void Function(DescribeInstanceCreditSpecificationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceCreditSpecificationsRequestBuilder toBuilder() =>
      new DescribeInstanceCreditSpecificationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceCreditSpecificationsRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        instanceIds == other.instanceIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, instanceIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceCreditSpecificationsRequestBuilder
    implements
        Builder<DescribeInstanceCreditSpecificationsRequest,
            DescribeInstanceCreditSpecificationsRequestBuilder> {
  _$DescribeInstanceCreditSpecificationsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _instanceIds;
  _i3.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i3.ListBuilder<String>();
  set instanceIds(_i3.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeInstanceCreditSpecificationsRequestBuilder() {
    DescribeInstanceCreditSpecificationsRequest._init(this);
  }

  DescribeInstanceCreditSpecificationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _instanceIds = $v.instanceIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceCreditSpecificationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceCreditSpecificationsRequest;
  }

  @override
  void update(
      void Function(DescribeInstanceCreditSpecificationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceCreditSpecificationsRequest build() => _build();

  _$DescribeInstanceCreditSpecificationsRequest _build() {
    _$DescribeInstanceCreditSpecificationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceCreditSpecificationsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeInstanceCreditSpecificationsRequest', 'dryRun'),
              filters: _filters?.build(),
              instanceIds: _instanceIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeInstanceCreditSpecificationsRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceCreditSpecificationsRequest',
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
