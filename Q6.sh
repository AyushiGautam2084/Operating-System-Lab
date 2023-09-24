XYZ_dir=XYZ
Myfile_dir="$XYZ_dir/Myfile"
MyDir_dir="$XYZ_dir/MyDir"
mkdir -p "$Myfile_dir" "$MyDir_dir"
find "$XYZ_dir" -maxdepth 1 -type f -exec mv {} "$Myfile_dir" \;
find "$XYZ_dir" -maxdepth 1 -type d ! -path '/Myfile' -exec mv {} "$Myfile_dir" `\;
