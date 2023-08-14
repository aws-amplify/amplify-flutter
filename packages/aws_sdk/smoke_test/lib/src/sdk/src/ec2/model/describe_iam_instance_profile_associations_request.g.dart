// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_iam_instance_profile_associations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIamInstanceProfileAssociationsRequest
    extends DescribeIamInstanceProfileAssociationsRequest {
  @override
  final _i3.BuiltList<String>? associationIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeIamInstanceProfileAssociationsRequest(
          [void Function(DescribeIamInstanceProfileAssociationsRequestBuilder)?
              updates]) =>
      (new DescribeIamInstanceProfileAssociationsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeIamInstanceProfileAssociationsRequest._(
      {this.associationIds,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeIamInstanceProfileAssociationsRequest', 'maxResults');
  }

  @override
  DescribeIamInstanceProfileAssociationsRequest rebuild(
          void Function(DescribeIamInstanceProfileAssociationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIamInstanceProfileAssociationsRequestBuilder toBuilder() =>
      new DescribeIamInstanceProfileAssociationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIamInstanceProfileAssociationsRequest &&
        associationIds == other.associationIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIamInstanceProfileAssociationsRequestBuilder
    implements
        Builder<DescribeIamInstanceProfileAssociationsRequest,
            DescribeIamInstanceProfileAssociationsRequestBuilder> {
  _$DescribeIamInstanceProfileAssociationsRequest? _$v;

  _i3.ListBuilder<String>? _associationIds;
  _i3.ListBuilder<String> get associationIds =>
      _$this._associationIds ??= new _i3.ListBuilder<String>();
  set associationIds(_i3.ListBuilder<String>? associationIds) =>
      _$this._associationIds = associationIds;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeIamInstanceProfileAssociationsRequestBuilder() {
    DescribeIamInstanceProfileAssociationsRequest._init(this);
  }

  DescribeIamInstanceProfileAssociationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationIds = $v.associationIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIamInstanceProfileAssociationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIamInstanceProfileAssociationsRequest;
  }

  @override
  void update(
      void Function(DescribeIamInstanceProfileAssociationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIamInstanceProfileAssociationsRequest build() => _build();

  _$DescribeIamInstanceProfileAssociationsRequest _build() {
    _$DescribeIamInstanceProfileAssociationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeIamInstanceProfileAssociationsRequest._(
              associationIds: _associationIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeIamInstanceProfileAssociationsRequest',
                  'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associationIds';
        _associationIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIamInstanceProfileAssociationsRequest',
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
