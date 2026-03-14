# =========================================
# Count ERROR or Failed entries
# =========================================

ERROR_COUNT=$(grep -Ei "ERROR|Failed" "$LOG_FILE" | wc -l)

echo "----------------------------------------"
echo "Total Error Entries: $ERROR_COUNT"
echo "----------------------------------------"
