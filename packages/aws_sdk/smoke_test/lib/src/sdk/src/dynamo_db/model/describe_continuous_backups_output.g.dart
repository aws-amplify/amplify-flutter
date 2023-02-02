// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_continuous_backups_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeContinuousBackupsOutput
    extends DescribeContinuousBackupsOutput {
  @override
  final _i2.ContinuousBackupsDescription? continuousBackupsDescription;

  factory _$DescribeContinuousBackupsOutput(
          [void Function(DescribeContinuousBackupsOutputBuilder)? updates]) =>
      (new DescribeContinuousBackupsOutputBuilder()..update(updates))._build();

  _$DescribeContinuousBackupsOutput._({this.continuousBackupsDescription})
      : super._();

  @override
  DescribeContinuousBackupsOutput rebuild(
          void Function(DescribeContinuousBackupsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeContinuousBackupsOutputBuilder toBuilder() =>
      new DescribeContinuousBackupsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeContinuousBackupsOutput &&
        continuousBackupsDescription == other.continuousBackupsDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, continuousBackupsDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeContinuousBackupsOutputBuilder
    implements
        Builder<DescribeContinuousBackupsOutput,
            DescribeContinuousBackupsOutputBuilder> {
  _$DescribeContinuousBackupsOutput? _$v;

  _i2.ContinuousBackupsDescriptionBuilder? _continuousBackupsDescription;
  _i2.ContinuousBackupsDescriptionBuilder get continuousBackupsDescription =>
      _$this._continuousBackupsDescription ??=
          new _i2.ContinuousBackupsDescriptionBuilder();
  set continuousBackupsDescription(
          _i2.ContinuousBackupsDescriptionBuilder?
              continuousBackupsDescription) =>
      _$this._continuousBackupsDescription = continuousBackupsDescription;

  DescribeContinuousBackupsOutputBuilder() {
    DescribeContinuousBackupsOutput._init(this);
  }

  DescribeContinuousBackupsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _continuousBackupsDescription =
          $v.continuousBackupsDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeContinuousBackupsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeContinuousBackupsOutput;
  }

  @override
  void update(void Function(DescribeContinuousBackupsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeContinuousBackupsOutput build() => _build();

  _$DescribeContinuousBackupsOutput _build() {
    _$DescribeContinuousBackupsOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeContinuousBackupsOutput._(
              continuousBackupsDescription:
                  _continuousBackupsDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'continuousBackupsDescription';
        _continuousBackupsDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeContinuousBackupsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
