set -l appearances latte frappe macchiato mocha

for appearance in $appearances
    magick $appearance.webp -crop '1320x50+0+464' +repage $appearance-crop.webp
end

catwalk {latte,frappe,macchiato,mocha}-crop.webp --output preview.webp --layout column

for appearance in $appearances
    rm $appearance-crop.webp
end
