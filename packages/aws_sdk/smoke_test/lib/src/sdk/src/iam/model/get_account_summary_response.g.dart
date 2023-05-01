// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_account_summary_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAccountSummaryResponse extends GetAccountSummaryResponse {
  @override
  final _i3.BuiltMap<_i2.SummaryKeyType, int>? summaryMap;

  factory _$GetAccountSummaryResponse(
          [void Function(GetAccountSummaryResponseBuilder)? updates]) =>
      (new GetAccountSummaryResponseBuilder()..update(updates))._build();

  _$GetAccountSummaryResponse._({this.summaryMap}) : super._();

  @override
  GetAccountSummaryResponse rebuild(
          void Function(GetAccountSummaryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAccountSummaryResponseBuilder toBuilder() =>
      new GetAccountSummaryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAccountSummaryResponse && summaryMap == other.summaryMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, summaryMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAccountSummaryResponseBuilder
    implements
        Builder<GetAccountSummaryResponse, GetAccountSummaryResponseBuilder> {
  _$GetAccountSummaryResponse? _$v;

  _i3.MapBuilder<_i2.SummaryKeyType, int>? _summaryMap;
  _i3.MapBuilder<_i2.SummaryKeyType, int> get summaryMap =>
      _$this._summaryMap ??= new _i3.MapBuilder<_i2.SummaryKeyType, int>();
  set summaryMap(_i3.MapBuilder<_i2.SummaryKeyType, int>? summaryMap) =>
      _$this._summaryMap = summaryMap;

  GetAccountSummaryResponseBuilder() {
    GetAccountSummaryResponse._init(this);
  }

  GetAccountSummaryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summaryMap = $v.summaryMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAccountSummaryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAccountSummaryResponse;
  }

  @override
  void update(void Function(GetAccountSummaryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAccountSummaryResponse build() => _build();

  _$GetAccountSummaryResponse _build() {
    _$GetAccountSummaryResponse _$result;
    try {
      _$result = _$v ??
          new _$GetAccountSummaryResponse._(summaryMap: _summaryMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summaryMap';
        _summaryMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAccountSummaryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
