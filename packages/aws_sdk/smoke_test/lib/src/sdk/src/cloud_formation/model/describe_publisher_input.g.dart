// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_publisher_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePublisherInput extends DescribePublisherInput {
  @override
  final String? publisherId;

  factory _$DescribePublisherInput(
          [void Function(DescribePublisherInputBuilder)? updates]) =>
      (new DescribePublisherInputBuilder()..update(updates))._build();

  _$DescribePublisherInput._({this.publisherId}) : super._();

  @override
  DescribePublisherInput rebuild(
          void Function(DescribePublisherInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePublisherInputBuilder toBuilder() =>
      new DescribePublisherInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePublisherInput && publisherId == other.publisherId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publisherId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribePublisherInputBuilder
    implements Builder<DescribePublisherInput, DescribePublisherInputBuilder> {
  _$DescribePublisherInput? _$v;

  String? _publisherId;
  String? get publisherId => _$this._publisherId;
  set publisherId(String? publisherId) => _$this._publisherId = publisherId;

  DescribePublisherInputBuilder() {
    DescribePublisherInput._init(this);
  }

  DescribePublisherInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publisherId = $v.publisherId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribePublisherInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePublisherInput;
  }

  @override
  void update(void Function(DescribePublisherInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePublisherInput build() => _build();

  _$DescribePublisherInput _build() {
    final _$result =
        _$v ?? new _$DescribePublisherInput._(publisherId: publisherId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
