# Loop through all files in the current directory
for file in *
do
    # Check if the file is a regular file (not a directory)
    if [ -f "$file" ]
    then
        # Substitute .C to .cpp in the file
        sed -i 's/\.cpp"/\.cpp"/g' "$file"
    fi
done