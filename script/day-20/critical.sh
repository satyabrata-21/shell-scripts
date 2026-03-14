# =========================================
# Task 3: Critical Events
# =========================================

# Print section header
echo "--- Critical Events ---"

# Variable to track if any CRITICAL logs were found
CRITICAL_FOUND=false

# Search for lines containing "CRITICAL" (case-insensitive)
# -i → ignore case
# -n → include line number in output
# Output format from grep: lineNumber:actual log message
while IFS= read -r line; do

    # Extract line number (before first colon)
    LINE_NUMBER=$(echo "$line" | cut -d: -f1)

    # Extract actual log message (after first colon)
    MESSAGE=$(echo "$line" | cut -d: -f2-)

    # Print in required format
    echo "Line $LINE_NUMBER: $MESSAGE"

    # Mark that at least one CRITICAL entry was found
    CRITICAL_FOUND=true

# Process substitution to feed grep output into while loop
done < <(grep -in "CRITICAL" "$LOG_FILE")

# If no CRITICAL entries were found, print message
if [ "$CRITICAL_FOUND" = false ]; then
    echo "No CRITICAL events found."
fi
