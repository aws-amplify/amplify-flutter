// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_fpga_images_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFpgaImagesRequest extends DescribeFpgaImagesRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? fpgaImageIds;
  @override
  final _i3.BuiltList<String>? owners;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeFpgaImagesRequest(
          [void Function(DescribeFpgaImagesRequestBuilder)? updates]) =>
      (new DescribeFpgaImagesRequestBuilder()..update(updates))._build();

  _$DescribeFpgaImagesRequest._(
      {required this.dryRun,
      this.fpgaImageIds,
      this.owners,
      this.filters,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeFpgaImagesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeFpgaImagesRequest', 'maxResults');
  }

  @override
  DescribeFpgaImagesRequest rebuild(
          void Function(DescribeFpgaImagesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFpgaImagesRequestBuilder toBuilder() =>
      new DescribeFpgaImagesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFpgaImagesRequest &&
        dryRun == other.dryRun &&
        fpgaImageIds == other.fpgaImageIds &&
        owners == other.owners &&
        filters == other.filters &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, fpgaImageIds.hashCode);
    _$hash = $jc(_$hash, owners.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFpgaImagesRequestBuilder
    implements
        Builder<DescribeFpgaImagesRequest, DescribeFpgaImagesRequestBuilder> {
  _$DescribeFpgaImagesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _fpgaImageIds;
  _i3.ListBuilder<String> get fpgaImageIds =>
      _$this._fpgaImageIds ??= new _i3.ListBuilder<String>();
  set fpgaImageIds(_i3.ListBuilder<String>? fpgaImageIds) =>
      _$this._fpgaImageIds = fpgaImageIds;

  _i3.ListBuilder<String>? _owners;
  _i3.ListBuilder<String> get owners =>
      _$this._owners ??= new _i3.ListBuilder<String>();
  set owners(_i3.ListBuilder<String>? owners) => _$this._owners = owners;

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

  DescribeFpgaImagesRequestBuilder() {
    DescribeFpgaImagesRequest._init(this);
  }

  DescribeFpgaImagesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _fpgaImageIds = $v.fpgaImageIds?.toBuilder();
      _owners = $v.owners?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFpgaImagesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFpgaImagesRequest;
  }

  @override
  void update(void Function(DescribeFpgaImagesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFpgaImagesRequest build() => _build();

  _$DescribeFpgaImagesRequest _build() {
    _$DescribeFpgaImagesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeFpgaImagesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeFpgaImagesRequest', 'dryRun'),
              fpgaImageIds: _fpgaImageIds?.build(),
              owners: _owners?.build(),
              filters: _filters?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeFpgaImagesRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fpgaImageIds';
        _fpgaImageIds?.build();
        _$failedField = 'owners';
        _owners?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFpgaImagesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
