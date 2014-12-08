Gsnow
===
---
> ####喜欢浪漫吗？
> ####雪花的飘落，让寒冷的冬天增添了几分浪漫和暖意
> ####不会魔法？
> ####没关系!
> #### `Gsnow`让你的页面也飘起浪漫吧

---
##What is Gsnow
---
> ###Gsnow 是一个基于Jquery编写的简单插件，实现页面飘雪效果

---

##How to use

---
> ##Demo

```html
<html>
<head>
  <link rel="stylesheet" href="css/Gsnow.css">
</head>
<body  style="background-color:black; height:100%; overflow:hidden">
	<div style="overflow:hidden;height:100%;width:100%;position:absolute">
	<div class="snow-box" ></div>
</div>
</body>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/Gsnow.min.js"></script>
<script>
$(document).ready(function(){
 var snowbody = $(".snow-box");
     snowbody.creatsnow(100);
     snowbody.started(0.5);
});

</script>
</html>
```

---
##Document
---
###方法
- ###`creatsnow(n,SP,symbol)`
> ####`n ` 生成雪花的数量
> ####`SP` 雪花初始位置是否在屏幕显示 布尔型，默认为不显示
> ####`symbol` 方便以后拓展其他效果，默认值为"snow"

- ###`started(speed)`
> ####`speed`  雪花下落的速度
---

##Problem
---
- ###雪花的下落消失位置暂不可可设
- ###还需设置snow-box外部样式
- ###除雪花外扩展新的效果


