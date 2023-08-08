// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_aggregation_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountAggregationSource extends AccountAggregationSource {
  @override
  final _i2.BuiltList<String> accountIds;
  @override
  final bool allAwsRegions;
  @override
  final _i2.BuiltList<String>? awsRegions;

  factory _$AccountAggregationSource(
          [void Function(AccountAggregationSourceBuilder)? updates]) =>
      (new AccountAggregationSourceBuilder()..update(updates))._build();

  _$AccountAggregationSource._(
      {required this.accountIds, required this.allAwsRegions, this.awsRegions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountIds, r'AccountAggregationSource', 'accountIds');
    BuiltValueNullFieldError.checkNotNull(
        allAwsRegions, r'AccountAggregationSource', 'allAwsRegions');
  }

  @override
  AccountAggregationSource rebuild(
          void Function(AccountAggregationSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountAggregationSourceBuilder toBuilder() =>
      new AccountAggregationSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountAggregationSource &&
        accountIds == other.accountIds &&
        allAwsRegions == other.allAwsRegions &&
        awsRegions == other.awsRegions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountIds.hashCode);
    _$hash = $jc(_$hash, allAwsRegions.hashCode);
    _$hash = $jc(_$hash, awsRegions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccountAggregationSourceBuilder
    implements
        Builder<AccountAggregationSource, AccountAggregationSourceBuilder> {
  _$AccountAggregationSource? _$v;

  _i2.ListBuilder<String>? _accountIds;
  _i2.ListBuilder<String> get accountIds =>
      _$this._accountIds ??= new _i2.ListBuilder<String>();
  set accountIds(_i2.ListBuilder<String>? accountIds) =>
      _$this._accountIds = accountIds;

  bool? _allAwsRegions;
  bool? get allAwsRegions => _$this._allAwsRegions;
  set allAwsRegions(bool? allAwsRegions) =>
      _$this._allAwsRegions = allAwsRegions;

  _i2.ListBuilder<String>? _awsRegions;
  _i2.ListBuilder<String> get awsRegions =>
      _$this._awsRegions ??= new _i2.ListBuilder<String>();
  set awsRegions(_i2.ListBuilder<String>? awsRegions) =>
      _$this._awsRegions = awsRegions;

  AccountAggregationSourceBuilder() {
    AccountAggregationSource._init(this);
  }

  AccountAggregationSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIds = $v.accountIds.toBuilder();
      _allAwsRegions = $v.allAwsRegions;
      _awsRegions = $v.awsRegions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountAggregationSource other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountAggregationSource;
  }

  @override
  void update(void Function(AccountAggregationSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountAggregationSource build() => _build();

  _$AccountAggregationSource _build() {
    _$AccountAggregationSource _$result;
    try {
      _$result = _$v ??
          new _$AccountAggregationSource._(
              accountIds: accountIds.build(),
              allAwsRegions: BuiltValueNullFieldError.checkNotNull(
                  allAwsRegions, r'AccountAggregationSource', 'allAwsRegions'),
              awsRegions: _awsRegions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountIds';
        accountIds.build();

        _$failedField = 'awsRegions';
        _awsRegions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountAggregationSource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
