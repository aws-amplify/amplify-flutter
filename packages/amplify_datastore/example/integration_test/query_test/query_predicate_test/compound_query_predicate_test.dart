/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_datastore_example/models/ModelProvider.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

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
          MultiTypeModel(
            stringValue: valueOne,
            altStringValue: valueOne,
          ),
          MultiTypeModel(
            stringValue: valueOne,
            altStringValue: valueTwo,
          ),
          MultiTypeModel(
            stringValue: valueOne,
            altStringValue: valueThree,
          ),
          MultiTypeModel(
            stringValue: valueTwo,
            altStringValue: valueOne,
          ),
          MultiTypeModel(
            stringValue: valueTwo,
            altStringValue: valueTwo,
          ),
          MultiTypeModel(
            stringValue: valueTwo,
            altStringValue: valueThree,
          ),
          MultiTypeModel(
            stringValue: valueThree,
            altStringValue: valueOne,
          ),
          MultiTypeModel(
            stringValue: valueThree,
            altStringValue: valueTwo,
          ),
          MultiTypeModel(
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
            MultiTypeModel.classType,
            where: MultiTypeModel.STRINGVALUE
                .eq(valueTwo)
                .and(MultiTypeModel.ALTSTRINGVALUE.eq(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('ne() & ne()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.stringValue != valueTwo)
              .where((model) => model.altStringValue != valueThree)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            MultiTypeModel.classType,
            where: MultiTypeModel.STRINGVALUE
                .ne(valueTwo)
                .and(MultiTypeModel.ALTSTRINGVALUE.ne(valueThree)),
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
            MultiTypeModel.classType,
            where: MultiTypeModel.STRINGVALUE
                .ne(valueTwo)
                .and(MultiTypeModel.STRINGVALUE.ne(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('lt() & lt()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.stringValue!.compareTo(valueTwo) < 0)
              .where((model) => model.altStringValue!.compareTo(valueThree) < 0)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            MultiTypeModel.classType,
            where: MultiTypeModel.STRINGVALUE
                .lt(valueTwo)
                .and(MultiTypeModel.ALTSTRINGVALUE.lt(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('gt() & gt()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.stringValue!.compareTo(valueOne) > 0)
              .where((model) => model.altStringValue!.compareTo(valueTwo) > 0)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            MultiTypeModel.classType,
            where: MultiTypeModel.STRINGVALUE
                .gt(valueOne)
                .and(MultiTypeModel.ALTSTRINGVALUE.gt(valueTwo)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });
      });

      group('int type and int type', () {
        var valueOne = -1;
        var valueTwo = 0;
        var valueThree = 1;
        var models = [
          MultiTypeModel(
            intValue: valueOne,
            altIntValue: valueOne,
          ),
          MultiTypeModel(
            intValue: valueOne,
            altIntValue: valueTwo,
          ),
          MultiTypeModel(
            intValue: valueOne,
            altIntValue: valueThree,
          ),
          MultiTypeModel(
            intValue: valueTwo,
            altIntValue: valueOne,
          ),
          MultiTypeModel(
            intValue: valueTwo,
            altIntValue: valueTwo,
          ),
          MultiTypeModel(
            intValue: valueTwo,
            altIntValue: valueThree,
          ),
          MultiTypeModel(
            intValue: valueThree,
            altIntValue: valueOne,
          ),
          MultiTypeModel(
            intValue: valueThree,
            altIntValue: valueTwo,
          ),
          MultiTypeModel(
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
            MultiTypeModel.classType,
            where: MultiTypeModel.INTVALUE
                .eq(valueTwo)
                .and(MultiTypeModel.ALTINTVALUE.eq(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('ne() & ne()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.intValue != valueTwo)
              .where((model) => model.altIntValue != valueThree)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            MultiTypeModel.classType,
            where: MultiTypeModel.INTVALUE
                .ne(valueTwo)
                .and(MultiTypeModel.ALTINTVALUE.ne(valueThree)),
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
            MultiTypeModel.classType,
            where: MultiTypeModel.INTVALUE
                .ne(valueTwo)
                .and(MultiTypeModel.INTVALUE.ne(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('lt() & lt()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.intValue!.compareTo(valueTwo) < 0)
              .where((model) => model.altIntValue!.compareTo(valueThree) < 0)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            MultiTypeModel.classType,
            where: MultiTypeModel.INTVALUE
                .lt(valueTwo)
                .and(MultiTypeModel.ALTINTVALUE.lt(valueThree)),
          );
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('gt() & gt()', (WidgetTester tester) async {
          var expectedModels = models
              .where((model) => model.intValue!.compareTo(valueOne) > 0)
              .where((model) => model.altIntValue!.compareTo(valueTwo) > 0)
              .toList();
          var actualModels = await Amplify.DataStore.query(
            MultiTypeModel.classType,
            where: MultiTypeModel.INTVALUE
                .gt(valueOne)
                .and(MultiTypeModel.ALTINTVALUE.gt(valueTwo)),
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
          (index) => MultiTypeModel(
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
            MultiTypeModel.classType,
            where: MultiTypeModel.STRINGVALUE
                .eq(stringValueOne)
                .and(MultiTypeModel.ALTSTRINGVALUE.eq(stringValueTwo))
                .and(MultiTypeModel.INTVALUE.eq(intValueOne))
                .and(MultiTypeModel.ALTINTVALUE.eq(intValueTwo)),
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
            MultiTypeModel.classType,
            where: MultiTypeModel.STRINGVALUE
                .eq(stringValueOne)
                .or(MultiTypeModel.ALTSTRINGVALUE.eq(stringValueTwo))
                .or(MultiTypeModel.INTVALUE.eq(intValueOne))
                .or(MultiTypeModel.ALTINTVALUE.eq(intValueTwo)),
          );
          expect(actualModels.length, 15);
          expect(actualModels, unorderedEquals(expectedModels));
        });

        testWidgets('ne() (and)', (WidgetTester tester) async {
          var actualModels = await Amplify.DataStore.query(
            MultiTypeModel.classType,
            where: MultiTypeModel.STRINGVALUE
                .ne(stringValueOne)
                .and(MultiTypeModel.ALTSTRINGVALUE.ne(stringValueTwo))
                .and(MultiTypeModel.INTVALUE.ne(intValueOne))
                .and(MultiTypeModel.ALTINTVALUE.ne(intValueTwo)),
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
            MultiTypeModel.classType,
            where: MultiTypeModel.STRINGVALUE
                .ne(stringValueOne)
                .or(MultiTypeModel.ALTSTRINGVALUE.ne(stringValueTwo))
                .or(MultiTypeModel.INTVALUE.ne(intValueOne))
                .or(MultiTypeModel.ALTINTVALUE.ne(intValueTwo)),
          );
          expect(actualModels.length, 15);
          expect(actualModels, unorderedEquals(expectedModels));
        });
      });
    },
  );
}
