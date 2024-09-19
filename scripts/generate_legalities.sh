# Generates HTML files from the MD  files.

MD_FOLDER="../../documents/legalities"
PRIVACY_POLICY="$MD_FOLDER/poopi_privacy_policy.md"
TERMS="$MD_FOLDER/poopi_terms_and_conditions.md"
OUTPUT_FOLDER="../public/legalities"
TEMPLATE="../templates/legality_template.html"

PRIVACY_POLICY_HTML=$(md_to_html "$PRIVACY_POLICY")
TERMS_HTML=$(md_to_html "$TERMS")

use_template_and_replace "$TEMPLATE" "$OUTPUT_FOLDER/privacy_policy.html" "Privacy Policy" "$PRIVACY_POLICY_HTML"
use_template_and_replace "$TEMPLATE" "$OUTPUT_FOLDER/terms_and_conditions.html" "Terms & Conditions" "$TERMS_HTML"
