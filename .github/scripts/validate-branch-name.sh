#!/usr/bin/env bash

# الحصول على اسم الفرع
BRANCH_NAME=${1:-$(git rev-parse --abbrev-ref HEAD)}

# النمط المطلوب لاسم الفرع
PATTERN='^(bugfix|hotfix|release)/[A-Za-z0-9]+-[0-9]+-[A-Za-z0-9\-]+$'

# التحقق من اسم الفرع باستخدام regex
if echo "$BRANCH_NAME" | grep -Eq "$PATTERN"; then
  echo "Branch name '$BRANCH_NAME' is valid."
  exit 0 # نجاح
else
  echo "Branch name '$BRANCH_NAME' is invalid. It must match the pattern: $PATTERN"
  exit 1 # فشل
fi
