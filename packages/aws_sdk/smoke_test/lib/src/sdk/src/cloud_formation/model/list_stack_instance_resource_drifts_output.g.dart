// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_stack_instance_resource_drifts_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackInstanceResourceDriftsOutput
    extends ListStackInstanceResourceDriftsOutput {
  @override
  final _i2.BuiltList<StackInstanceResourceDriftsSummary>? summaries;
  @override
  final String? nextToken;

  factory _$ListStackInstanceResourceDriftsOutput(
          [void Function(ListStackInstanceResourceDriftsOutputBuilder)?
              updates]) =>
      (new ListStackInstanceResourceDriftsOutputBuilder()..update(updates))
          ._build();

  _$ListStackInstanceResourceDriftsOutput._({this.summaries, this.nextToken})
      : super._();

  @override
  ListStackInstanceResourceDriftsOutput rebuild(
          void Function(ListStackInstanceResourceDriftsOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackInstanceResourceDriftsOutputBuilder toBuilder() =>
      new ListStackInstanceResourceDriftsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackInstanceResourceDriftsOutput &&
        summaries == other.summaries &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, summaries.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStackInstanceResourceDriftsOutputBuilder
    implements
        Builder<ListStackInstanceResourceDriftsOutput,
            ListStackInstanceResourceDriftsOutputBuilder> {
  _$ListStackInstanceResourceDriftsOutput? _$v;

  _i2.ListBuilder<StackInstanceResourceDriftsSummary>? _summaries;
  _i2.ListBuilder<StackInstanceResourceDriftsSummary> get summaries =>
      _$this._summaries ??=
          new _i2.ListBuilder<StackInstanceResourceDriftsSummary>();
  set summaries(
          _i2.ListBuilder<StackInstanceResourceDriftsSummary>? summaries) =>
      _$this._summaries = summaries;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListStackInstanceResourceDriftsOutputBuilder();

  ListStackInstanceResourceDriftsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _summaries = $v.summaries?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackInstanceResourceDriftsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackInstanceResourceDriftsOutput;
  }

  @override
  void update(
      void Function(ListStackInstanceResourceDriftsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackInstanceResourceDriftsOutput build() => _build();

  _$ListStackInstanceResourceDriftsOutput _build() {
    _$ListStackInstanceResourceDriftsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListStackInstanceResourceDriftsOutput._(
              summaries: _summaries?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'summaries';
        _summaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStackInstanceResourceDriftsOutput',
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
