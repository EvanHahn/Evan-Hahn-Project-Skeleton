../common/css-cat.sh > _temp.txt
stylus _temp.txt
mv _temp.txt ../../style.css
echo "Development CSS build complete."
