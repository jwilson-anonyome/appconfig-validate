
validate: validate-minimal-orig validate-minimal-modified1 validate-minimal-modified2 validate-orig validate-modified1 validate-modified2 validate-modified2-strict

validate-minimal-orig:
  -./node_modules/.bin/ajv validate -s app-config-schema.json \
    -c ajv-formats -c ajv-keywords -d flag-set-minimal.yml --all-errors --strict=false
  @echo

validate-minimal-modified1:
  -./node_modules/.bin/ajv validate -s app-config-schema-modified1.json \
    -c ajv-formats -c ajv-keywords -d flag-set-minimal.yml --all-errors --strict=false
  @echo

validate-minimal-modified2:
  -./node_modules/.bin/ajv validate -s app-config-schema-modified2.json \
    -c ajv-formats -c ajv-keywords -d flag-set-minimal.yml --all-errors --strict=false
  @echo

validate-orig:
  -./node_modules/.bin/ajv validate -s app-config-schema.json \
    -c ajv-formats -c ajv-keywords -d flag-set.yml --all-errors --strict=false
  @echo

validate-modified1:
  -./node_modules/.bin/ajv validate -s app-config-schema-modified1.json \
    -c ajv-formats -c ajv-keywords -d flag-set.yml --all-errors --strict=false
  @echo

validate-modified2:
  -./node_modules/.bin/ajv validate -s app-config-schema-modified2.json \
    -c ajv-formats -c ajv-keywords -d flag-set.yml --all-errors --strict=false
  @echo

validate-modified2-strict:
  -./node_modules/.bin/ajv validate -s app-config-schema-modified2.json \
    -c ajv-formats -c ajv-keywords -d flag-set.yml --all-errors --strict=true
  @echo
