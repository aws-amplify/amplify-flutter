#!/bin/bash

HEADER=$(cat <<EOF
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
EOF
)

dart run ./tool/generate_country_localization.dart

COUNTRY_OUTPUT_FILES=('lib/src/utils/country_code.dart' 'lib/src/l10n/country_resolver.dart')
OUTPUT_DIR=lib/src/l10n/generated
TEMPLATES=('titles_en.arb' 'buttons_en.arb' 'inputs_en.arb' 'countries_en.arb' 'messages_en.arb')
ARB_DIRS=('lib/src/l10n/src/titles' 'lib/src/l10n/src/buttons' 'lib/src/l10n/src/inputs' 'lib/src/l10n/src/countries' 'lib/src/l10n/src/messages')
OUTPUT_CLASSES=('AuthenticatorTitleLocalizations' 'AuthenticatorButtonLocalizations' 'AuthenticatorInputLocalizations' 'AuthenticatorCountryLocalizations' 'AuthenticatorMessageLocalizations')
OUTPUT_FILES=('title_localizations.dart' 'button_localizations.dart' 'input_localizations.dart' 'country_localizations.dart' 'message_localizations.dart')

for i in "${!TEMPLATES[@]}"; do
    ARB_DIR=${ARB_DIRS[i]}
    TEMPLATE=${TEMPLATES[i]}
    OUTPUT_CLASS=${OUTPUT_CLASSES[i]}
    OUTPUT_FILE=${OUTPUT_FILES[i]}

    echo "Generating localizations for \"${ARB_DIR}/${TEMPLATE}\""

    flutter gen-l10n \
        --arb-dir $ARB_DIR \
        --output-dir $OUTPUT_DIR \
        --template-arb-file $TEMPLATE \
        --output-localization-file $OUTPUT_FILE \
        --output-class $OUTPUT_CLASS \
        --header "$HEADER" \
        --use-deferred-loading \
        --no-synthetic-package \
        --required-resource-attributes \
        --nullable-getter
done
# Clean up generated files
flutter format $OUTPUT_DIR

for i in "${!COUNTRY_OUTPUT_FILES[@]}"; do
flutter format "${COUNTRY_OUTPUT_FILES[i]}"
done

dart fix --apply
