// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_bundle_tasks_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeBundleTasksRequest extends DescribeBundleTasksRequest {
  @override
  final _i3.BuiltList<String>? bundleIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;

  factory _$DescribeBundleTasksRequest(
          [void Function(DescribeBundleTasksRequestBuilder)? updates]) =>
      (new DescribeBundleTasksRequestBuilder()..update(updates))._build();

  _$DescribeBundleTasksRequest._(
      {this.bundleIds, this.filters, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeBundleTasksRequest', 'dryRun');
  }

  @override
  DescribeBundleTasksRequest rebuild(
          void Function(DescribeBundleTasksRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeBundleTasksRequestBuilder toBuilder() =>
      new DescribeBundleTasksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeBundleTasksRequest &&
        bundleIds == other.bundleIds &&
        filters == other.filters &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bundleIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeBundleTasksRequestBuilder
    implements
        Builder<DescribeBundleTasksRequest, DescribeBundleTasksRequestBuilder> {
  _$DescribeBundleTasksRequest? _$v;

  _i3.ListBuilder<String>? _bundleIds;
  _i3.ListBuilder<String> get bundleIds =>
      _$this._bundleIds ??= new _i3.ListBuilder<String>();
  set bundleIds(_i3.ListBuilder<String>? bundleIds) =>
      _$this._bundleIds = bundleIds;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeBundleTasksRequestBuilder() {
    DescribeBundleTasksRequest._init(this);
  }

  DescribeBundleTasksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bundleIds = $v.bundleIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeBundleTasksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeBundleTasksRequest;
  }

  @override
  void update(void Function(DescribeBundleTasksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeBundleTasksRequest build() => _build();

  _$DescribeBundleTasksRequest _build() {
    _$DescribeBundleTasksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeBundleTasksRequest._(
              bundleIds: _bundleIds?.build(),
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeBundleTasksRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bundleIds';
        _bundleIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeBundleTasksRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
