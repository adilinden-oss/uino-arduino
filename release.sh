#!/bin/sh

name="UinoCore"
release="1.0.0"
url="https://github.com/adilinden-oss/uino-arduino.git"

zipfile="${name}-${release}.zip"
gitclone="${name}-${release}-checkout"

# Capture where we are
dir="$(cd "$(dirname "$0")" && pwd)"

# Shallow clone of repo
echo "=== Shallow clone of \"$url\""
git clone --depth 1 --single-branch -b master --recursive "$url" "$gitclone" || exit 1

# Rename AVR directory
echo "=== Rename \"avr\" to \"$name\""
cd "$gitclone"
mv "avr" "$name"

# Remove git files
echo "=== Remove git files"
find . -name .git | xargs rm -rf
find . -name .gitmodules | xargs rm -rf
find . -name .gitignore | xargs rm -rf
find . -name .gitattributes | xargs rm -rf

# Zip it
echo "=== Zip up \"$name\" as \"$zipfile\""
zip -rq "$zipfile" "$name"

# Cleanup
echo "=== Save result and cleanup"
mv "$zipfile" "$dir/$zipfile"
cd "$dir"
rm -rf "$gitclone"

# Calculate SHA-256 and file size of hardware add-on
echo \"checksum\": \"SHA-256:`shasum -a 256 $zipfile | awk '{print $1}'`\",
echo \"size\": \"`ls -l $zipfile | awk '{print $5}'`\",
