mkdir $1
cd $1
mkdir js css
touch index.html css/style.css js/main.js
echo '<!DOCTYPE><title>Hello</title><h1>Hi</h1>' >> index.html
echo 'h1{color: red;}' >> css/style.css
echo 'var string="hello world" alert(string)' >> js/main.js
exit
