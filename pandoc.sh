#!/bin/sh

echo "Convertendo."
for file in `dir -d *.md` ; do
  echo "pandoc $file => $file.pdf"
  pandoc "$file" -o $file.pdf
done
echo "Pronto."
