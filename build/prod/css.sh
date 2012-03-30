../common/css-cat.sh > _temp.txt
stylus -c _temp.txt
mv _temp.txt ../../style.css
echo "Production CSS build complete."
