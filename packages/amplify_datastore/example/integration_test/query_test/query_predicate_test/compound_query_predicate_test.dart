// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // there are an infinite number of compound queries that can be performed
  // this set of tests aims to test the most common scenarios
  group(
    'compound queries',
    () {
      group('string type and string type', () {
        var valueOne = '';
        var valueTwo = 'abc';
        var valueThree = 'xyz';
        var models = [
          ModelWithAppsyncScalarTypes(
            stringValue: valueOne,
            altStringValue: valueOne,
          ),
          ModelWithAppsyncScalarTypes(
            stringValue: valueOne,
            altStringValue: valueTwo,
          ),
          ModelWithAppsyncScalarTypes(
            stringValue: valueOne,
            altStringValue: valueThree,
          ),
          ModelWithAppsyncScalarTypes(
            stringValue: valueTwo,
            altStringValue: valueOne,
          ),
          ModelWithAppsyncScalarTypes(
            stringValue: valueTwo,
            altStringValue: valueTwo,
          ),
          ModelWithAppsyncScalarTypes(
            stringValue: valueTwo,
            altStringValue: valueThree,
          ),
          ModelWithAppsyncScalarTypes(
            stringValue: valueThree,
            altStringValue: valueOne,
          ),
          ModelWithAppsyncScalarTypes(
            stringValue: valueThree,
            altStringValue: valueTwo,
          ),
          ModelWithAppsyncScalarTypes(
            stringValue: valueThree,
            altStringValue: valueThree,
          ),
        ];

        setUpAll(() async {
          await configureDataStore();
          await clearDataStore();
          for (var model in models) {
            await Amplify.DataStore.save(model);
          }
        });
        testWidgets('eq() & eq()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.stringValue == valueTwo)
              .where((model) => model.altStringValue == valueThree)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.STRINGVALUE
                .eq(valueTwo)
                .and(ModelWithAppsyncScalarTypes.ALTSTRINGVALUE.eq(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('ne() & ne()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.stringValue != valueTwo)
              .where((model) => model.altStringValue != valueThree)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.STRINGVALUE
                .ne(valueTwo)
                .and(ModelWithAppsyncScalarTypes.ALTSTRINGVALUE.ne(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('ne() & ne() on the same field',
            (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.stringValue != valueTwo)
              .where((model) => model.stringValue != valueThree)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.STRINGVALUE
                .ne(valueTwo)
                .and(ModelWithAppsyncScalarTypes.STRINGVALUE.ne(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('lt() & lt()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.stringValue!.compareTo(valueTwo) < 0)
              .where((model) => model.altStringValue!.compareTo(valueThree) < 0)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.STRINGVALUE
                .lt(valueTwo)
                .and(ModelWithAppsyncScalarTypes.ALTSTRINGVALUE.lt(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('gt() & gt()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.stringValue!.compareTo(valueOne) > 0)
              .where((model) => model.altStringValue!.compareTo(valueTwo) > 0)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.STRINGVALUE
                .gt(valueOne)
                .and(ModelWithAppsyncScalarTypes.ALTSTRINGVALUE.gt(valueTwo)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });
      });

      group('int type and int type', () {
        var valueOne = -1;
        var valueTwo = 0;
        var valueThree = 1;
        var models = [
          ModelWithAppsyncScalarTypes(
            intValue: valueOne,
            altIntValue: valueOne,
          ),
          ModelWithAppsyncScalarTypes(
            intValue: valueOne,
            altIntValue: valueTwo,
          ),
          ModelWithAppsyncScalarTypes(
            intValue: valueOne,
            altIntValue: valueThree,
          ),
          ModelWithAppsyncScalarTypes(
            intValue: valueTwo,
            altIntValue: valueOne,
          ),
          ModelWithAppsyncScalarTypes(
            intValue: valueTwo,
            altIntValue: valueTwo,
          ),
          ModelWithAppsyncScalarTypes(
            intValue: valueTwo,
            altIntValue: valueThree,
          ),
          ModelWithAppsyncScalarTypes(
            intValue: valueThree,
            altIntValue: valueOne,
          ),
          ModelWithAppsyncScalarTypes(
            intValue: valueThree,
            altIntValue: valueTwo,
          ),
          ModelWithAppsyncScalarTypes(
            intValue: valueThree,
            altIntValue: valueThree,
          ),
        ];

        setUpAll(() async {
          await configureDataStore();
          await clearDataStore();
          for (var model in models) {
            await Amplify.DataStore.save(model);
          }
        });
        testWidgets('eq() & eq()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.intValue == valueTwo)
              .where((model) => model.altIntValue == valueThree)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.INTVALUE
                .eq(valueTwo)
                .and(ModelWithAppsyncScalarTypes.ALTINTVALUE.eq(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('ne() & ne()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.intValue != valueTwo)
              .where((model) => model.altIntValue != valueThree)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.INTVALUE
                .ne(valueTwo)
                .and(ModelWithAppsyncScalarTypes.ALTINTVALUE.ne(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('ne() & ne() on the same field',
            (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.intValue != valueTwo)
              .where((model) => model.intValue != valueThree)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.INTVALUE
                .ne(valueTwo)
                .and(ModelWithAppsyncScalarTypes.INTVALUE.ne(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('lt() & lt()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.intValue!.compareTo(valueTwo) < 0)
              .where((model) => model.altIntValue!.compareTo(valueThree) < 0)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.INTVALUE
                .lt(valueTwo)
                .and(ModelWithAppsyncScalarTypes.ALTINTVALUE.lt(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('gt() & gt()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.intValue!.compareTo(valueOne) > 0)
              .where((model) => model.altIntValue!.compareTo(valueTwo) > 0)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.INTVALUE
                .gt(valueOne)
                .and(ModelWithAppsyncScalarTypes.ALTINTVALUE.gt(valueTwo)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });
      });

      group('multiple types', () {
        var stringValueOne = 'abc';
        var stringValueTwo = 'xyz';
        var intValueOne = 1;
        var intValueTwo = 2;

        // generate a model with every combination
        var models = List.generate(
          16,
          (index) => ModelWithAppsyncScalarTypes(
            intValue: index % 2 < 1 ? intValueOne : intValueTwo,
            altIntValue: index % 4 < 2 ? intValueOne : intValueTwo,
            stringValue: index % 8 < 4 ? stringValueOne : stringValueTwo,
            altStringValue: index % 16 < 8 ? stringValueOne : stringValueTwo,
          ),
        );

        setUpAll(() async {
          await configureDataStore();
          await clearDataStore();
          for (var model in models) {
            await Amplify.DataStore.save(model);
          }
        });

        testWidgets('eq() (and)', (WidgetTester tester) async {
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.STRINGVALUE
                .eq(stringValueOne)
                .and(ModelWithAppsyncScalarTypes.ALTSTRINGVALUE
                    .eq(stringValueTwo))
                .and(ModelWithAppsyncScalarTypes.INTVALUE.eq(intValueOne))
                .and(ModelWithAppsyncScalarTypes.ALTINTVALUE.eq(intValueTwo)),
          );
          expect(actualModels.length, 1);
          expect(actualModels.first.stringValue, stringValueOne);
          expect(actualModels.first.altStringValue, stringValueTwo);
          expect(actualModels.first.intValue, intValueOne);
          expect(actualModels.first.altIntValue, intValueTwo);
        });

        testWidgets('eq() (or)', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) =>
                  model.stringValue == stringValueOne ||
                  model.altStringValue == stringValueTwo ||
                  model.intValue == intValueOne ||
                  model.altIntValue == intValueTwo)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.STRINGVALUE
                .eq(stringValueOne)
                .or(ModelWithAppsyncScalarTypes.ALTSTRINGVALUE
                    .eq(stringValueTwo))
                .or(ModelWithAppsyncScalarTypes.INTVALUE.eq(intValueOne))
                .or(ModelWithAppsyncScalarTypes.ALTINTVALUE.eq(intValueTwo)),
          );
          expect(actualModels.length, 15);
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('ne() (and)', (WidgetTester tester) async {
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.STRINGVALUE
                .ne(stringValueOne)
                .and(ModelWithAppsyncScalarTypes.ALTSTRINGVALUE
                    .ne(stringValueTwo))
                .and(ModelWithAppsyncScalarTypes.INTVALUE.ne(intValueOne))
                .and(ModelWithAppsyncScalarTypes.ALTINTVALUE.ne(intValueTwo)),
          );
          expect(actualModels.length, 1);
          expect(actualModels.first.stringValue, stringValueTwo);
          expect(actualModels.first.altStringValue, stringValueOne);
          expect(actualModels.first.intValue, intValueTwo);
          expect(actualModels.first.altIntValue, intValueOne);
        });

        testWidgets('ne() (or)', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) =>
                  model.stringValue != stringValueOne ||
                  model.altStringValue != stringValueTwo ||
                  model.intValue != intValueOne ||
                  model.altIntValue != intValueTwo)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            ModelWithAppsyncScalarTypes.classType,
            where: ModelWithAppsyncScalarTypes.STRINGVALUE
                .ne(stringValueOne)
                .or(ModelWithAppsyncScalarTypes.ALTSTRINGVALUE
                    .ne(stringValueTwo))
                .or(ModelWithAppsyncScalarTypes.INTVALUE.ne(intValueOne))
                .or(ModelWithAppsyncScalarTypes.ALTINTVALUE.ne(intValueTwo)),
          );
          expect(actualModels.length, 15);
          expect(actualModels, unorderedEquals(expectedModels));
        });
      });
    },
  );
}
