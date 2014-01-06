FILE="LED Strip rev 2.kicad_pcb"

mv "$FILE" "${FILE}_old"
sed -r '/fp_text/N;s/(\(fp_text.+\n.*\(size )[^)]+\) \(thickness [^)]+/\10.762 0.762) (thickness 0.130/' "${FILE}_old" > "$FILE"
