// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_conversion_tasks_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConversionTasksRequest extends DescribeConversionTasksRequest {
  @override
  final _i3.BuiltList<String>? conversionTaskIds;
  @override
  final bool dryRun;

  factory _$DescribeConversionTasksRequest(
          [void Function(DescribeConversionTasksRequestBuilder)? updates]) =>
      (new DescribeConversionTasksRequestBuilder()..update(updates))._build();

  _$DescribeConversionTasksRequest._(
      {this.conversionTaskIds, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeConversionTasksRequest', 'dryRun');
  }

  @override
  DescribeConversionTasksRequest rebuild(
          void Function(DescribeConversionTasksRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConversionTasksRequestBuilder toBuilder() =>
      new DescribeConversionTasksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConversionTasksRequest &&
        conversionTaskIds == other.conversionTaskIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conversionTaskIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConversionTasksRequestBuilder
    implements
        Builder<DescribeConversionTasksRequest,
            DescribeConversionTasksRequestBuilder> {
  _$DescribeConversionTasksRequest? _$v;

  _i3.ListBuilder<String>? _conversionTaskIds;
  _i3.ListBuilder<String> get conversionTaskIds =>
      _$this._conversionTaskIds ??= new _i3.ListBuilder<String>();
  set conversionTaskIds(_i3.ListBuilder<String>? conversionTaskIds) =>
      _$this._conversionTaskIds = conversionTaskIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeConversionTasksRequestBuilder() {
    DescribeConversionTasksRequest._init(this);
  }

  DescribeConversionTasksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conversionTaskIds = $v.conversionTaskIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConversionTasksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConversionTasksRequest;
  }

  @override
  void update(void Function(DescribeConversionTasksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConversionTasksRequest build() => _build();

  _$DescribeConversionTasksRequest _build() {
    _$DescribeConversionTasksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeConversionTasksRequest._(
              conversionTaskIds: _conversionTaskIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeConversionTasksRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conversionTaskIds';
        _conversionTaskIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConversionTasksRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
