# bashscript-nodejs

demo.sh and demo.js

demo.sh 
```
  mkdir $1
  cd $1
  mkdir js css
  touch index.html css/style.css js/main.js
  echo '<!DOCTYPE><title>Hello</title><h1>Hi</h1>' >> index.html
  echo 'h1{color: red;}' >> css/style.css
  echo 'var string="hello world" alert(string)' >> js/main.js
  exit
```

demo.js
```
  #!/usr/bin/env node

  var fs = require('fs')
  var dirName = process.argv[2] // 你传的参数是从第 2 个开始的

  //  process.chdir("Users/huangfl/Desktop")
  fs.mkdirSync("./" + dirName) // mkdir $1
  process.chdir("./" + dirName) // cd $1
  fs.mkdirSync('css') // mkdir css
  fs.mkdirSync('js') // mkdir js

  fs.writeFileSync("./index.html", "")
  fs.writeFileSync("css/style.css", "")
  fs.writeFileSync("./js/main.js", "")

  process.exit(0)
```
解析：<br>
终端输入： `demo.sh  xxx`  生成文件夹xxx，内容包含：`index.html` , `js/main.js` , `css/style.css`  <br>
终端输入： `demo.js  yyy`  生成文件夹yyy，内容包含： `index.html` , `js/main.js` , `css/style.css` <br>

*提示： 如果失败，需要终端执行： `source ~/.bashrc`*
