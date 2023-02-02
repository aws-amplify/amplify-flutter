// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.output_location;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OutputLocation extends OutputLocation {
  @override
  final _i2.S3Location? s3;

  factory _$OutputLocation([void Function(OutputLocationBuilder)? updates]) =>
      (new OutputLocationBuilder()..update(updates))._build();

  _$OutputLocation._({this.s3}) : super._();

  @override
  OutputLocation rebuild(void Function(OutputLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutputLocationBuilder toBuilder() =>
      new OutputLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutputLocation && s3 == other.s3;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, s3.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OutputLocationBuilder
    implements Builder<OutputLocation, OutputLocationBuilder> {
  _$OutputLocation? _$v;

  _i2.S3LocationBuilder? _s3;
  _i2.S3LocationBuilder get s3 => _$this._s3 ??= new _i2.S3LocationBuilder();
  set s3(_i2.S3LocationBuilder? s3) => _$this._s3 = s3;

  OutputLocationBuilder() {
    OutputLocation._init(this);
  }

  OutputLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3 = $v.s3?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutputLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OutputLocation;
  }

  @override
  void update(void Function(OutputLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutputLocation build() => _build();

  _$OutputLocation _build() {
    _$OutputLocation _$result;
    try {
      _$result = _$v ?? new _$OutputLocation._(s3: _s3?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3';
        _s3?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OutputLocation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
