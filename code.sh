#!/system/bin/sh

unique_id="$(settings get secure android_id)"

#echo $unique_id
# URL of the online file containing restricted access IDs
online_file_url="https://pastebin.com/raw/5X08qfQd"

# Download the file
curl_output=$(curl -s "$online_file_url")

# Check if the unique ID is present in the file>
if grep -q "$unique_id" <<< "$curl_output"; then
    echo "You have been banned for misbehaving!"
else
    echo "Access granted"
fi




#!/system/bin/sh

# Get the IMEI using getprop
imei=$(getprop ro.serialno)

# Print the result
if [ -n "$imei" ]; then
    echo "IMEI: $imei"
else
    echo "Failed to retrieve IMEI"
fi

