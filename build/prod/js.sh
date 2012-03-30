../common/js-cat.sh > _temp.coffee
coffee -c _temp.coffee
java -jar js-compiler.jar --js _temp.js --js_output_file ../../script.js
rm _temp.*
echo "Production JavaScript build complete."