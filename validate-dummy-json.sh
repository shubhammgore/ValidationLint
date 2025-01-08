for file in $(find . -name '*.json'); do
    echo "Validating $file"
    jsonlint "$file" -q
    if [ $? -ne 0 ]; then
        echo "❌ $file is valid"
        exit 1
    else
        echo "✅ $file is invalid"
    fi
done