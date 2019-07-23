SET NAMES UTF8;
DROP DATABASE IF EXISTS menu;
CREATE DATABASE menu CHARSET=UTF8;
USE menu;
#人气菜肴
create table popular_dishes(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
###
insert into popular_dishes values
	(null,'葱油拌面','路过的小酒窝','原料：挂面、香葱、黄瓜丝、花生米、食用油、白芝麻、生抽、米醋。','/img/pop/pop1.jpg'),
	(null,"芝麻南瓜饼","绿达山茶花小妹妹","原料：南瓜、糯米粉、白糖、白芝麻、绿达山茶油。",'/img/pop/pop2.jpg'),
	(null,"红烧豆腐","水青青","原料：豆腐、红辣椒、芹菜、精盐、食用油、酱油、麻辣鲜、味精。",'/img/pop/pop3.jpg'),
	(null,"凉拌木耳","乐之新","原料：干木耳、草菇、生抽、盐、辣椒油、味精、醋。",'/img/pop/pop4.jpg'),
	(null,"茄汁豆腐","暖暖尚","原料：北豆腐、青椒、生抽、番茄酱、盐、白糖、白醋。",'/img/pop/pop5.jpg'),
	(null,"泰式柠檬猪肉脯","可意妈妈","原料：瘦猪肉馅、细砂糖、鱼露、鸡精、辣椒粉、盐、黑胡椒粉、柠檬汁、柠檬皮。",'/img/pop/pop6.jpg'),
	(null,"双椒回锅肉","大草海","原料：五花肉、红椒、青椒、豆瓣酱、糖、嫩姜、蒜。",'/img/pop/pop7.jpg'),
	(null,"野山椒牛肉","钱钱de餐桌","原料：牛肉、芹菜、野山椒、蒜米、小米辣。",'/img/pop/pop8.jpg'),
	(null,"免洗面凉皮","烟雨心灵","原料：面粉、盐、清水、黄瓜、芝麻酱、大蒜、生抽、陈醋、糖、盐、辣椒油、熟花生米。",'/img/pop/pop9.jpg'),
       (null,"番茄土豆牛腩汤","风意画","原料：牛腩、番茄、土豆、胡萝卜、洋葱、大葱、姜、独头蒜、冰糖、干辣椒、八角、香叶、花椒、料酒、生抽、盐、葱花。",'/img/pop/pop10.jpg'),
	(null,"鲫鱼烧毛豆","香香的小厨房","原料：鲫鱼、毛豆米、盐、糖、料酒、生抽、老抽、香醋、葱、干辣椒、鸡精、姜、蒜。",'/img/pop/pop11.jpg'),
	(null,"凉拌腐竹花生米","允儿小妞的厨房","原料：腐竹、花生米、黄瓜、生抽、凉拌汁、香醋、辣椒油、盐、小米辣、生姜、大蒜末。",'/img/pop/pop12.jpg'),
	(null,"自制流沙咸蛋","小菜一碟的家","原料：鸡蛋、高度白酒、白醋、粗盐。",'/img/pop/pop13.jpg'),
    (null,'酸甜美食——茄子鱼','原来你也在这里！',"原料：茄子、鸡蛋、面粉、淀粉、醋、白糖、酱油。",'/img/pop/pop14.jpg'),
	(null,"西红柿青椒炒鸡蛋","一溪月","原料：西红柿、青椒、鸡蛋、玉米油。",'/img/pop/pop15.jpg');
#早餐
create table breakfirst(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into breakfirst values
	(null,"鲜玉米糊","清水淡竹","原料：水果玉米、糯玉米、水。",'/img/bre/bre1.jpg'),
	(null,"蜂蜜脆底小面包","心-静","原料：高筋面粉、低筋面粉、鸡蛋、奶粉、细砂糖、盐、酵母、黄油、水、白芝麻、玉米油、低粉、细砂糖。",'/img/bre/bre2.jpg'),
	(null,"玛格丽特面包","seiseizhang","原料：T65小麦粉、T55小麦粉、硬红小麦粉、20度净水、酵母粉、净水、精盐。",'/img/bre/bre3.jpg'),
	(null,"酱肉包子","大草海","原料：肉末、蚝油、甜面酱、姜末、生抽、面粉、酵母、糖。",'/img/bre/bre4.jpg'),
	(null,"绿豆发糕","twobabys琪.薇儿","原料：绿豆、枸杞、白砂糖、酵母、泡打粉、食用油、水。",'/img/bre/bre5.jpg'),
	(null,"南瓜粥","BeiBei_Mom","原料：南瓜、大米、花生油、盐。",'/img/bre/bre6.jpg'),
	(null,"【辽宁】南瓜发面葱花饼","小草根家庭美食","原料：南瓜泥、面粉、酵母、白糖、葱花、温水、盐。",'/img/bre/bre7.jpg'),
    (null,"无油黄瓜卷饼","木紫冰","原料：小黄瓜、鸡蛋、普通面粉、盐、番茄酱、水。",'/img/bre/bre8.jpg'),
	(null,"糖果子","尔东叶","原料：小麦粉、红糖、油、盐、酵母粉。",'/img/bre/bre9.jpg'),
	(null,"手作超厚火腿蛋三明治","dancesblue","原料：白吐司、紫甘蓝、鸡蛋、西红柿、火腿、沙拉酱、盐。",'/img/bre/bre10.jpg'),
	(null,"流沙馅包子","大草海","原料：面粉、酵母、白糖、糯米粉、吉士粉、白糖。",'/img/bre/bre11.jpg'),
	(null,"萝卜糕","寂静不语","原料：萝卜、腊肠、洋葱、香菇、粘米粉、盐、白胡椒粉、生抽。",'/img/bre/bre12.jpg'),
	(null,"坚果原味吐司","Meggy跳舞的苹果","原料：金龙鱼高筋面粉、淡奶油、黄油、混合坚果、干酵母、盐、白糖、凉水。",'/img/bre/bre13.jpg'),
	(null,"培根芝士面包卷","麦子老妈","原料：酵母、高粉、砂糖、盐、黄油、牛奶、鸡蛋、芝士片、葱花、马苏里拉芝士",'/img/bre/bre14.jpg'),
	(null,"彩虹豆沙包","芊芊_DOkzbcaviraI","原料：中筋面粉、老面酵头、水、食用碱、猪油、糖、豆沙、食用色素。",'/img/bre/bre15.jpg');
#热菜
create table hot_food(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into hot_food values
	(null,"辣子鸡","逝去的爱情","原料：鸡块、葱、干辣椒、姜、蒜、玉米油、生抽、白糖、料酒、盐。",'/img/hotf/hotf1.jpg'),
	(null,"青椒豆芽","木紫冰","原料：黄豆芽、青椒、食用油、盐。",'/img/hotf/hotf2.jpg'),
	(null,"四季豆炒咸肉","木紫冰","原料：咸肉、四季豆、食用油、姜丝、料酒、糖、盐、水。",'/img/hotf/hotf3.jpg'),
	(null,"红烧带鱼","木紫冰","原料：带鱼、青椒、食用油、姜、盐、料酒、老抽、生抽、水、糖。",'/img/hotf/hotf4.jpg'),
	(null,"家常烧鱼块","米拉拉拉拉～","原料：草鱼、花椒、辣椒、生姜、大蒜、料酒、胡椒粉、盐、生抽、陈醋。",'/img/hotf/hotf5.jpg'),
	(null,"家常简易烧五花肉","寻梦一ZbDu","原料：五花肉、大葱、姜、炖肉料包、料酒、冰糖、酱油。",'/img/hotf/hotf6.jpg'),
	(null,"响油金针菇牛肉","衔月斋","原料：金针菇、鲜牛肉、青椒、葱、酱油、藤椒油、鸡精、淀粉、果酒、盐、白糖、红椒。",'/img/hotf/hotf7.jpg'),
	(null,"麻辣粉蒸排骨","爱做川菜的小猴子","原料：猪排骨、土豆、豆腐乳、醪糟、高度白酒、郫县油制豆瓣酱、花椒粉、姜汁、糖色、味精、盐、五香米粉、辣椒油、鲜汤、葱花。",'/img/hotf/hotf8.jpg'),
	(null,"豆瓣炒蒜蛋","木紫冰","原料：鸡蛋、蒜苗、蚕豆、盐、食用油、水。",'/img/hotf/hotf9.jpg'),
	(null,"酸笋炒蛤蜊肉","sourcehe","原料：麻辣蛤蜊肉、酸笋、青辣椒、红辣椒、油、盐。",'/img/hotf/hotf10.jpg'),
	(null,"红烧鱼块","清水淡竹","原料：鲫鱼、葱、姜、蒜、淀粉、油、盐、料酒、生抽。",'/img/hotf/hotf11.jpg'),
	(null,"椒盐皮皮虾","海味八珍AX3k6","原料：皮皮虾、蒜、姜、洋葱、柠檬、红椒、葱、椒盐、料酒、黑胡椒粉。",'/img/hotf/hotf12.jpg'),
	(null,"香辣茄子","大草海","原料：茄子、蒜、青椒、生抽、麻油、花椒油、香辣酱、醋。",'/img/hotf/hotf13.jpg'),
	(null,"蒜苗蚕豆","木紫冰","原料：蒜苗、蚕豆、盐、食用油、水。",'/img/hotf/hotf14.jpg'),
	(null,"酱爆杏鲍菇","零下一度0511","原料：杏鲍菇、姜、蒜、葱、豆瓣酱、鸡精、生粉。",'/img/hotf/hotf15.jpg');
#冬季食谱
create table winter_recip(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into winter_recip values
	(null,"黑椒烤翅","蜜儿Mier","原料：鸡中翅、黑椒粉、生抽、老抽、盐、姜片、蜂蜜。",'/img/winter/winter01.png'),
	(null,"美味萝卜裹蛋 ","薄荷糖的味道","原料：鸡蛋、乌江美味萝卜、香葱、剁椒。",'/img/winter/winter02.png'),
	(null,"京酱肉丝","美食天下","原料：猪里脊、豆腐皮、葱白、蛋清、水淀粉、甜面酱、白砂糖、黄酒、生姜、食用油。",'/img/winter/winter03.png'),
	(null,"酱牛肉","美食天下","原料：牛腱子、酱油、黄酒、干黄酱、冰糖、盐、大葱、生姜、大料、桂皮、花椒、香叶、白芷、草果、山奈、砂仁、小茴香、干辣椒、陈皮。",'/img/winter/winter04.png'),
	(null,"清炒藕丝","蜜儿Mier","原料：藕、红辣椒、盐、油。",'/img/winter/winter05.png'),
	(null,"排骨蘑菇汤 ","厨娘宋宋 ","原料：排骨、黄丝菇、姜片、葱、料酒、盐。",'/img/winter/winter06.png'),
	(null,"清蒸龙虾","蜜儿Mier","原料：龙虾、葱、蒜、生抽、醋、香油、水、姜。",'/img/winter/winter07.png'),
	(null,"#团圆饭#酱焖土豆 ","尔东叶","原料：胡萝卜、荷兰豆、山药、橄榄油、盐、味精、葱、芝麻油、姜.",'/img/winter/winter08.png'),
	(null,"鱼香茄子煲 ","蜜儿Mier","原料：长茄子、猪肉馅、青椒、红椒、蒜、辣椒、小葱、豆瓣酱、糖、香醋、生抽、玉米淀粉、盐、油。",'/img/winter/winter09.png'),
	(null,"红烧鸡爪","泥泥_鳅鳅 ","原料：鸡爪、盐、老抽、生抽、冰糖、料酒、大料、香叶.",'/img/winter/winter10.png'),
	(null,"芝麻酱拌黄瓜","泥泥_鳅鳅","原料：芝麻酱、黄瓜、酱油、白醋、白糖、蒜、香油。",'/img/winter/winter11.png'),
	(null,"香干炒蒜苗","青葱食味","原料：豆干、蒜苗、豆瓣酱、生抽、花椒粉、蒜、盐、油、红椒、鸡精.",'/img/winter/winter12.png'),
	(null,"韩式泡菜海鲜汤","青葱食味","原料：青口贝、章鱼足、海虾、豆腐、韩式泡菜、生姜、葱、盐。",'/img/winter/winter13.png'),
	(null,"清蒸鲥鱼","青葱食味","原料：鲥鱼、盐、黄酒、姜、京葱.",'/img/winter/winter14.png'),
	(null,"番茄木耳炒鸡蛋 ","青葱食味","原料：番茄、木耳、鸡蛋、油、盐、葱。",'/img/winter/winter15.png');
#一周热菜
create table week_hot(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into week_hot values
	("null","麻辣土豆片","蜜儿Mier","原料:土豆、葱、蒜泥、盐、油、蚝油、生抽、辣椒油、醋、白糖、香油.",'/img/week/week01.png'),
	("null","香肠酥皮卷","薄荷糖的味道","原料:手抓饼皮、火腿肠、蛋黄液、黑芝麻.",'/img/week/week02.png'),
	("null","耗油生菜","蜜儿Mier","原料:生菜、蒜泥、蚝油、生抽、白糖、淀粉.",'/img/week/week03.png'),
	("null","溜肉段","诗韵墨香","原料:里脊肉、尖椒、胡萝卜、油、盐、水、淀粉、老抽、味素、番茄酱、糖",'/img/week/week04.png'),
	("null","肉沫豆角","诗韵墨香","原料:豆角、瘦肉、姜、蒜、豆豉、小红椒、盐、鸡精、胡椒粉.",'/img/week/week05.png'),
	("null","酱黄瓜","蕾宝呢","原料：黄瓜、大蒜、辣椒。",'/img/week/week06.png'),
	("null","蜜汁鸡翅根","诗韵墨香","原料：鸡翅根、油、料酒、葱、姜、蒜、冰糖、蚝油、老抽、生抽、八角、香叶。",'/img/week/week07.png'),
	("null","蒸鸡蛋羹","蜜儿Mier","原料：鸡蛋、葱花、香油、生抽",'/img/week/week08.png'),
	("null","糖醋荷包蛋","蜜儿Mier","原料：鸡蛋、蒜、番茄酱、料酒、酱油、白糖、白醋、油",'/img/week/week09.png'),
	("null","荤菜香菇酿虾","蜜儿Mier","原料：虾仁、胡萝卜、香菇、料酒、生抽、蚝油、盐、油、五香粉、生粉。",'/img/week/week10.png'),
	("null","虾仁蒸玉米","蜜儿Mier","原料：玉米、青虾、面粉。",'/img/week/week11.png'),
	("null","糯米香蕉饼","青葱食味","原料：糯米粉、香蕉、番茄酱、清水。",'/img/week/week12.png'),
	("null","老式蛋糕","青葱食味","原料：低筋面粉、鸡蛋、白砂糖。",'/img/week/week13.png'),
	("null","秘制粉蒸肉","青葱食味","原料：五花肉、米粉、酱油、蚝油、老抽、甜面酱、五香粉、盐、黄豆酱.",'/img/week/week14.png'),
	("null","酸奶蛋糕","青葱食味","原料：鸡蛋、酸奶、低筋面粉、细砂糖、柠檬汁。",'/img/week/week15.png');
#高颜值	
create table high(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into high values
	(null,"玫瑰抹茶云顶曲奇----入口即化的曲奇","蜜儿Mier","原料：黄油、糖粉、马铃薯淀粉、低粉、海盐、玫瑰酱、抹茶粉。",'/img/high/high01.png'),
	(null,"仿真蘑菇包","薄荷糖的味道","原料：水、糖、酵母、中筋面粉、可可粉。",'/img/high/high02.png'),
	(null,"小猪曲奇~抹茶曲奇","蜜儿Mier","原料：黄油、低筋面粉、抹茶粉、红曲粉、花生碎、鸡蛋、白糖。",'/img/high/high03.png'),
	(null,"条纹馒头","诗韵墨香","原料：中筋面粉、糖、老面酵头、温水、食用碱、红曲粉。",'/img/high/high04.png'),
	(null,"巧克力脆皮蛋糕卷","诗韵墨香","原料：饼干、白糖、黄油、自制酸奶、奶油、鱼胶片、牛奶、鱼胶片。",'/img/high/high05.png'),
	(null,"双色戚风","蕾宝呢","原料：鸡蛋、低粉、牛奶、玉米油、白砂糖、白醋、可可粉。",'/img/high/high06.png'),
	(null,"小鱼馒头","诗韵墨香","原料：中筋粉、奶粉、白糖、清水、熟红豆、酵母。",'/img/high/high07.png'),
	(null,"卡通勤劳的小蜜蜂馒头","蜜儿Mier","原料：白色面团、黑色面团、黄色面团、红色面团、白糖、酵母粉。",'/img/high/high08.png'),
	(null,"南瓜团子","蜜儿Mier","原料：糯米粉、玉米淀粉、糖、南瓜、巧克力栗子馅。",'/img/high/high09.png'),
	(null,"粽子表情包馒头","蜜儿Mier","原料：面粉、牛奶、细砂糖、玉米油、酵母粉、抹茶粉、可可粉、绿色色素。",'/img/high/high10.png'),
	(null,"芭比娃娃蛋糕","蜜儿Mier","原料：低筋面粉、玉米油、牛奶、鸡蛋、淡奶油、糖。",'/img/high/high11.png'),
	(null,"红薯紫薯红豆糕","青葱食味","原料：红薯、紫薯、糯米粉、木薯粉、红豆沙。",'/img/high/high12.png'),
	(null,"小蜗牛","青葱食味","原料：面粉、酵母、温水、面粉粉、可可粉、奶粉、白糖。",'/img/high/high13.png'),
	(null,"玫瑰花馒头","青葱食味","原料：中筋面粉、南瓜、酵母。",'/img/high/high14.png'),
	(null,"樱花曲奇","青葱食味","原料：黄油、低粉、淡奶油、糖粉、盐、盐渍樱花、蛋清。",'/img/high/high15.png');
#凉菜
create table cold(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into cold values
	(null,"果仁芹菜","龙卷风中的小猫","原料：西芹、果仁、油、盐、花椒。","/img/cold/cold01.png"),
	(null,"凉拌粉丝","薄荷糖的味道","原料：粉丝、胡萝卜、黄瓜、盐、生抽、糖、麻油、醋、温水、清水、冰水。","/img/cold/cold02.png"),
	(null,"黄瓜凉粉","蜜儿Mier","原料：黄瓜、豌豆淀粉、红油、蒜末。","/img/cold/cold03.png"),
	(null,"口水鸡","诗韵墨香","原料：鸡腿、姜片、蒜末、香葱、料酒、生抽、香醋、油辣子。","/img/cold/cold04.png"),
	(null,"凉拌木耳","诗韵墨香","原料：黑木耳、洋葱、香菜、蒜、小米辣、熟油、生抽、香醋、蚝油、白糖、盐。","/img/cold/cold05.png"),
	(null,"酸甜美食——凉拌黄瓜拉皮","蕾宝呢","原料：黄瓜、拉皮、大蒜、醋、白糖、凉拌汁、麻酱汁。","/img/cold/cold06.png"),
	(null,"川北凉粉","诗韵墨香","原料：豌豆淀粉、水、酱油、盐、大蒜、姜、鸡精、白糖、花椒面、红辣椒油、花椒油、芝麻油、葱花、杭椒、白芝麻。","/img/cold/cold07.png"),
	(null,"酸辣凉粉","蜜儿Mier","原料：纯豌豆粉、清水、葱、蒜、醋、青红椒、白糖、芝麻香油、酱油、鸡精、白芝麻、辣椒粉。","/img/cold/cold08.png"),
	(null,"凉拌糖醋鸡爪","蜜儿Mier","原料：鸡爪、盐、糖、生抽、醋、料酒、姜、微辣中青椒、清水、凉白开。","/img/cold/cold09.png"),
	(null,"秋葵拌虾仁","蜜儿Mier","原料：秋葵、虾仁、蒜末、生抽、蚝油、白糖、盐、米醋、清水、亚麻籽油。","/img/cold/cold10.png"),
	(null,"拌三丝","蜜儿Mier","原料：百叶、芹菜、胡萝卜。","/img/cold/cold11.png"),
	(null,"凉拌酸辣土豆丝","青葱食味","原料：土豆、胡萝卜、香菜、青辣椒、大蒜、辣椒油、香醋、生抽、盐。","/img/cold/cold12.png"),
	(null,"拌凉粉","青葱食味","原料：凉粉、麻酱、生抽、醋、糖、蒜末、黄瓜丝、香菜末、水、辣椒油、味精。","/img/cold/cold13.png"),
	(null,"煎鸡胸沙拉","青葱食味","原料：鸡胸、时蔬、红酒醋、茶油、黑胡椒碎、砂糖、盐。","/img/cold/cold14.png"),
	(null,"陈醋小黄瓜","青葱食味","原料：波斯小黄瓜、蒜、葱、陈醋、味极鲜酱油、糖、玉米油、麻油、盐。","/img/cold/cold15.png");
#酱泡腌菜
create table  pickles(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into  pickles values
	(null,'腌青番茄','芊芊_DOkzbcaviraI','原料：青番茄、糖。','/img/pickles/01.jpg'),
	(null,"腌制脆甜的西瓜皮","陌情菲","原料：厚皮大西瓜、盐、生姜、白糖、味精、自己腌制的辣椒。",'/img/pickles/02.jpg'),
	(null,"糖醋蒜","笑梦","原料：新蒜、陈醋、冰糖、白糖、米醋、盐、水、红糖。",'/img/pickles/03.jpg'),
	(null,"酱腌黄瓜","雨欣欣欣","原料：嫩黄瓜、大蒜、泡椒、花生油、酱油、醋、白糖、味精、辣椒面。",'/img/pickles/04.jpg'),
	(null,"四川老坛酸菜","春天姐姐","原料：青菜、盐、老坛水、凉开水。",'/img/pickles/05.jpg'),
	(null,"快速腌制辣白菜","大海微澜","原料：白菜、大蒜、姜、苹果、梨、白糖、柠檬、辣椒粉、味素、鱼露、盐。",'/img/pickles/06.jpg'),
	(null,"泡菜","馋嘴乐","原料：白菜、胡萝卜、盐、白糖、蒜、辣椒酱。",'/img/pickles/07.jpg'),
	(null,"萝卜咸菜","最初的最美","原料：绿萝卜、蒜末、姜末、醋、白糖、香油、粗辣椒粉、盐。",'/img/pickles/08.jpg'),
	(null,"酸辣萝卜丝","緣豆兒","原料：白萝卜、小葱、蒜、辣椒粉、白砂糖、白葡萄酒醋、白芝麻、盐、油。",'/img/pickles/09.png'),
	(null,"糖醋白萝卜","寻梦一ZbDu","原料：白萝卜、姜、糖、白醋、枸杞子、盐。",'/img/pickles/10.jpg'),
	(null,"葱泡菜","Anna_vam","原料：小葱、洋葱、梨、蒜、姜、盐、糖、鱼露、辣椒酱。",'/img/pickles/11.jpg'),
	(null,"韩式小根蒜","慢时光里的微凉","原料：小根蒜、芝麻、细辣椒粉、盐、味精、白糖、韩式辣酱、食用油。",'/img/pickles/12.jpg'),
   	(null,'剁椒酱','恐龙凝眸',"原料：二荆条红辣椒、生姜、蒜、食盐、白糖、高度白酒。",'/img/pickles/13.jpg'),
	(null,"酸辣黄瓜","最初的最美","原料：黄瓜、蒜、小米辣、生抽、陈醋、盐、鸡精、白糖、辣椒油。",'/img/pickles/14.jpg'),
	(null,"西兰花梗酸","harriet1003","原料：西兰花梗、小米椒、白糖、米醋。",'/img/pickles/15.jpg');
#主食
create table  main(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into main values
	(null,"#肉食#猪肉芹菜馅饼","龙卷风中的小猫","原料：面粉、酵母、清水、植物油、芹菜、猪肉、鸡蛋、生抽、葱花、姜粉、十三香、盐、熟油。","/img/main/main01.jpg"),
	(null,"南瓜丝肉麦饼","薄荷糖的味道","原料：嫩南瓜、夹心肉、蒜、葱、油、盐。","/img/main/main02.jpg"),
	(null,"早餐三部曲~鸡蛋饼","蜜儿Mier","原料：面粉、鸡蛋、香菜、蒜米、葱花、细盐、胡椒粉、番茄酱。","/img/main/main03.jpg"),
	(null,"猪肉青椒大包子","诗韵墨香","原料：中筋面粉、猪肉馅、青椒、辣椒、小葱、凉水、干酵母、盐、蚝油、芝麻油。","/img/main/main04.jpg"),
	(null,"水煎冰饺","诗韵墨香","原料：速冻饺子、油、生粉。","/img/main/main05.jpg"),
	(null,"葱油拌面","蕾宝呢","原料：挂面、香葱、黄瓜丝、花生米、食用油、白芝麻、生抽、米醋。","/img/main/main06.jpg"),
	(null,"夏季快手拌面","诗韵墨香","原料：挂面、香葱、小米辣、白芝麻、清水、辣椒粉、油、蒜末、生抽、米醋。","/img/main/main07.jpg"),
	(null,"快手面条","蜜儿Mier","原料：面粉、软江叶。","/img/main/main08.jpg"),
	(null,"饺子面","蜜儿Mier","原料：饺子、面条、油、盐。","/img/main/main09.jpg"),
	(null,"菜团子","蜜儿Mier","原料：玉米面、白面、小白菜、虾米、胡萝卜、盐、蚝油、胡椒粉、香油、鸡蛋、葱花。","/img/main/main10.jpg"),
	(null,"葱香饺子皮饼","蜜儿Mier","原料：饺子皮、葱花、盐、十三香、麻椒粉、食用油。","/img/main/main11.jpg"),
	(null,"梅干菜鸡蛋馅盒子","青葱食味","原料：面粉、开水、冷水、盐、梅干菜、鸡蛋、盐、胡椒粉、蚝油、胡萝卜、黄瓜。","/img/main/main12.jpg"),
	(null,"芝麻南瓜饼","青葱食味","原料：南瓜、糯米粉、白糖、芝麻、酸奶。","/img/main/main13.jpg"),
	(null,"黑米面红糖芝麻饼","青葱食味","原料：面粉、黑米面、酵母、清水、红糖、面粉、芝麻。","/img/main/main14.jpg"),
	(null,"蒸南瓜糯米饭","青葱食味","原料：糯米、南瓜。","/img/main/main15.jpg");
#小吃
create table  snack(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into snack values
	(null,"黄金玉米饼","龙卷风中的小猫","原料：新鲜的玉米、菜籽油、糯米粉、白糖。","/img/snack/snack01.jpg"),
	(null,"土豆泥饼","薄荷糖的味道","原料：土豆、糯米粉、胡萝卜、盐、油、五香粉、面包糠。","/img/snack/snack02.jpg"),
	(null,"盐水花生","蜜儿Mier","原料：花生、八角、桂皮、香叶、茴香、干辣椒、盐、水。","/img/snack/snack03.jpg"),
	(null,"红豆小米酥","诗韵墨香","原料：小米、红芸豆、蜂蜜、植物油。","/img/snack/snack04.jpg"),
	(null,"香炸香芋玫瑰花","诗韵墨香","原料：香芋、油、盐。","/img/snack/snack05.jpg"),
	(null,"好吃到爆的黑胡椒汁土豆泥，甩KFC几条街","蕾宝呢","原料：土豆、纯牛奶、盐、黑胡椒粉、玉米淀粉、黄油、蚝油、清水。","/img/snack/snack06.jpg"),
	(null,"海苔肉松饭团","诗韵墨香","原料：米饭、肉松海苔、番茄沙司。","/img/snack/snack07.jpg"),
	(null,"中式天妇罗","蜜儿Mier","原料：面粉、角瓜、盐、胡椒粉。","/img/snack/snack08.jpg"),
	(null,"牙签肉","蜜儿Mier","原料：里脊肉、辣椒粉、蚝油、胡椒粉、孜然粉、花椒粉、淀粉、料酒、白糖、生抽、盐、牙签。","/img/snack/snack09.jpg"),
	(null,"凉拌米粉#酸甜美食#","蜜儿Mier","原料：米粉、火锅调料、黄瓜、香肠、胡萝卜、陈醋、糖、辣椒油。","/img/snack/snack10.jpg"),
	(null,"肉食——里脊肉串","蜜儿Mier","原料：饺子皮、葱花、盐、十三香、麻椒粉、食用油。","/img/snack/snack11.jpg"),
	(null,"脱糖糍饭团","青葱食味","原料：大米、糯米、黑糯米、黄瓜、肉松、油条。","/img/snack/snack12.jpg"),
	(null,"亚麻籽粉蓝莓松饼","青葱食味","原料：低筋粉、亚麻籽粉、速食燕麦片、白糖、盐、牛奶、新鲜蓝莓、泡打粉、苏打粉。","/img/snack/snack13.jpg"),
	(null,"香卤鸡爪","青葱食味","原料：鸡爪、桂皮、大料、干辣椒、冰糖、酱油、五香粉、盐。","/img/snack/snack14.jpg"),
	(null,"在家就能搞定的汉堡，健康美味又方便","青葱食味","原料：高筋面粉、盐、细砂糖、黄油、鸡蛋、牛奶、牛肉、洋葱、黑胡椒、生抽、盐、水、芝士片、沙拉酱、黄芥酱、西红柿、生菜、酸黄瓜。","/img/snack/snack15.jpg");
#新秀菜谱
create table  new(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into new values
	(null,"蛋炒饭","龙卷风中的小猫","原料：剩米饭、鸡蛋、火腿肠、青豆、胡萝卜丁、蚝油、油、生抽。","/img/new/new01.jpg"),
	(null,"火腿肠炒西兰花","薄荷糖的味道","原料：西兰花、火腿肠、蚝油、生抽、油、盐。","/img/new/new02.jpg"),
	(null,"肉末火腿土豆泥","蜜儿Mier","原料：土豆、火腿、肉馅、油、葱、姜、香油、芝麻、海苔碎、酱油、老抽、盐、水淀粉。","/img/new/new03.jpg"),
	(null,"猪肉冬瓜丸子汤","诗韵墨香","原料：猪肉、冬瓜、鸡蛋、葱、香菜、盐、淀粉、香油、生抽、鸡精、姜末。","/img/new/new04.jpg"),
	(null,"西红柿牛腩豆腐汤","诗韵墨香","原料：牛腩、西红柿、豆腐、番茄黄豆罐头、盐、糖、生抽、葱、料酒、香菜、姜。","/img/new/new05.jpg"),
	(null,"冬瓜海藻汤","蕾宝呢","原料：冬瓜、瘦肉、海藻、绿豆、蜜枣。","/img/new/new06.jpg"),
	(null,"橙子汁","诗韵墨香","原料：橙子。","/img/new/new07.jpg"),
	(null,"红糖饼","蜜儿Mier","原料：面粉、红糖、干酵母、水、白芝麻。","/img/new/new08.jpg"),
	(null,"红枣焖三杯鸡","蜜儿Mier","原料：鸡块、大红枣、姜片、蒜头、红葱头、香菜、红糖粉、生抽、精盐、米酒、麻油、酱油、蚝油、红糖粉、米酒、熟芝麻。","/img/new/new09.jpg"),
	(null,"紫薯南瓜酸奶杯","蜜儿Mier","原料：紫薯、南瓜、酸奶、牛奶、坚果。","/img/new/new10.jpg"),
	(null,"黑椒土豆泥","蜜儿Mier","原料：土豆、牛奶、有机黄油、蚝油、盐、黑胡椒、水淀粉。","/img/new/new11.jpg"),
	(null,"酱爆鱿鱼","青葱食味","原料：鲜鱿鱼、洋葱、辣椒、柱侯酱、姜、盐。","/img/new/new12.jpg"),
	(null,"蒜香蒸茄子","青葱食味","原料：长茄子、青椒、蒜头、生抽、食用油、麻油、精盐。","/img/new/new13.jpg"),
	(null,"可可味小蛋糕卷","青葱食味","原料：鸡蛋、低筋面粉、可可粉、细砂糖、温水、玉米油。","/img/new/new14.jpg"),
	(null,"豆芽丝瓜汤","青葱食味","原料：豆芽、丝瓜、西红柿、青菜、玉米油、盐。","/img/new/new15.jpg");
#秋葵
create table okra(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into okra values
	(null,"凉拌秋葵","杜鹃花美食","原料：秋葵、芝麻油、辣椒油、鲍鱼汁、生抽、白糖、蚝油。","/img/Okra/01.jpg"),
	(null,"白灼秋葵","吾爱烘焙","原料：秋葵、辣椒圈、蒜、生抽、糖、盐。","/img/Okra/02.jpg"),
	(null,"秋葵鸡蛋卷","sunshinewinnie","原料：秋葵、鸡蛋、蒜末、生抽、芝麻油、辣椒油。","/img/Okra/03.jpg"),
	(null,"秋葵鸡蛋小煎饼","心在乌云上2013","原料：面粉、秋葵、鸡蛋、胡萝卜、盐、清水。","/img/Okra/04.jpg"),
	(null,"秋葵鲫鱼汤","花擦擦","原料：鲫鱼、秋葵、油、盐、黄油、姜。","/img/Okra/05.jpg"),
	(null,"剁椒秋葵","心语梦境","原料：秋葵、蒜、葱、辣油、生抽、糖、剁椒酱、香油、盐、鸡精、色拉油。","/img/Okra/06.jpg"),
	(null,"培根炒秋葵","开心果子365","原料：秋葵、培根、红彩椒、蒜头、生抽、盐、黄彩椒。","/img/Okra/07.jpg"),
	(null,"火腿拌秋葵","斯佳丽WH","原料：秋葵、生火腿、红辣椒、蒜、白醋、芝麻香油、盐。","/img/Okra/08.jpg"),
	(null,"金针菇拌秋葵","火镀红叶","原料：金针菇、秋葵、朝天椒、蒜、葱、冷开水、花生油、香醋、酱油、糖、鸡粉。","/img/Okra/09.jpg"),
	(null,"秋葵炒鸡丁","飘雪厨房","原料：鸡肉、秋葵、油盐、料酒、生抽、淀粉、辣椒酱。","/img/Okra/10.jpg"),
	(null,"洋葱南瓜烧秋葵","遗忘↘蕾拉","原料：南瓜、秋葵、洋葱、大蒜、油盐、百里香、胡椒粉、水。","/img/Okra/11.jpg"),
	(null,"孜然煎秋葵","sourcehe","原料：秋葵、孜然粉、橄榄油、盐、酱油。","/img/Okra/12.jpg");
#西红柿
create table tomatoes(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into tomatoes values
	(null,"番茄土豆炖牛腩","安小厨520","原料：西红柿、洋葱、香葱、盐、生抽、老姜片、土豆、牛腩肉、冰糖、白胡椒粉、油、香葱粒。","/img/Tomatoes/01.jpg"),
	(null,"番茄乌冬面","暖夫生活","原料：西红柿、乌冬面、玉米、盐、油、糖、鸡精。","/img/Tomatoes/02.jpg"),
	(null,"番茄柚子汁","Meggy跳舞的苹果","原料：红心柚子、西红柿。","/img/Tomatoes/03.jpg"),
	(null,"番茄牛腩煲","Meggy跳舞的苹果","原料：牛腩、西红柿、姜、盐、香菜、油。","/img/Tomatoes/04.jpg"),
	(null,"糖拌西红柿","浅浅_眉","原料：西红柿、白糖。","/img/Tomatoes/05.jpg"),
	(null,"番茄肉酱意面","吃好吃的咯520","原料：意大利面、西红柿、青辣椒、猪肉馅、番茄蔬菜酱、料酒、盐、橄榄油、黑胡椒。","/img/Tomatoes/06.jpg"),
	(null,"茄汁狮子头","万山红","原料：肉馅、豆腐、西红柿、洋葱、菠萝、鸡蛋、番茄酱、盐、糖、胡椒粉、五香粉、黄油。","/img/Tomatoes/07.jpg"),

	(null,"西红柿炒鸡蛋","Meggy跳舞的苹果","原料：西红柿、鸡蛋、油盐、白糖。","/img/Tomatoes/08.jpg"),
	(null,"番茄鸡蛋疙瘩汤","舍得的美食诱惑","原料：西红柿、鸡蛋、面粉、姜粉、盐、胡椒粉、鸡精。","/img/Tomatoes/09.jpg"),
	(null,"西红柿炸鱼汤","悦悦玉食","原料：炸鱼段、西红柿、盐、葱花、芹菜叶。","/img/Tomatoes/10.jpg"),
	(null,"西红柿热汤面","Meggy跳舞的苹果","原料：面条、西红柿、鸡蛋、香菜、油、葱花、盐、酱油。","/img/Tomatoes/11.jpg"),
	(null,"西红柿紫菜虾皮汤面","一溪月","原料：西红柿、紫菜、虾皮、面条、盐、生抽、麻椒粉、陈醋、香油。","/img/Tomatoes/12.jpg");

#黑木耳
create table black_fungus(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into black_fungus values
	(null,"西兰花炒木耳","天山可可","原料：西兰花、黑木耳、植物油、盐、小米椒、味极鲜、鸡精。","/img/black_fungus/01.jpg"),
	(null,"肉皮小炒","天山可可","原料：猪肉皮、黑木耳、红椒、豆豉、生抽、盐、食用油、料酒、蚝油、糖 姜 葱、香叶、八角。","/img/black_fungus/02.jpg"),
	(null,"辣炒木耳黄瓜","狼之舞","原料：黄瓜、黑木耳、食用油、生姜、大蒜、花椒、白糖、精盐、红辣椒。","/img/black_fungus/03.jpg"),
	(null,"木耳炒百合","小春","原料：黑木耳、千百合、小葱、盐、牛肉粉、生抽、水淀粉。","/img/black_fungus/04.jpg"),
	(null,"蒜薹木耳肉","浅浅_眉","原料：黑木耳、红辣椒、猪肉、植物油、姜、味极鲜、鸡精、盐、淀粉、香油。","/img/black_fungus/05.jpg"),
	(null,"酸辣黑木耳","吃好吃的咯520","原料：黑木耳、青辣椒、红辣椒、白糖、植物油、精盐、生姜、酱油、陈醋、料酒。","/img/black_fungus/06.jpg"),
	(null,"蒜泥菠菜鸡蛋","万山红","原料：菠菜、鸡蛋、黑木耳、精盐、植物油、味极鲜酱油、大蒜、香油。","/img/black_fungus/07.jpg"),

	(null,"清炒山药片","Meggy跳舞的苹果","原料：山药、油、精盐、青椒、红尖椒、黑木耳、白醋、生姜、花椒、大蒜。","/img/black_fungus/08.jpg"),
	(null,"家常溜肝尖","舍得的美食诱惑","原料：猪肝、黄瓜、黑木耳、红椒、姜、蒜、葱、油、盐、生粉、白糖、陈醋、白醋、辣椒酱、胡椒粉。","/img/black_fungus/09.jpg"),
	(null,"四喜烤麸","悦悦玉食","原料：烤麸、黄花菜、黑木耳、香菜、腐竹、毛豆、花生、老抽、盐、冰糖、葱段、姜片、蒜瓣、八角、桂皮。","/img/black_fungus/10.jpg"),
	(null,"黑木耳瘦肉春卷","Meggy跳舞的苹果","原料：瘦肉、黑木耳、春卷皮、姜农、蒜末、葱花、香油、盐、糖、生抽、生粉。","/img/black_fungus/11.jpg"),
	(null,"芹菜木耳蛋皮丝","一溪月","原料：芹菜、黑木耳、虾米、鸡蛋。","/img/black_fungus/12.jpg");
#小龙虾
create table lobster(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),
	material VARCHAR(500),
	img_url VARCHAR(500)
);
insert into lobster values
	(null,"麻辣小龙虾","天山可可","原料：豆瓣酱、小龙虾、土豆、料酒、清水、花椒、麻椒、八角、陈皮、香叶、酱油、蚝油、大蒜、姜片、干辣椒。","/img/lobster/01.jpg"),
	(null,"小龙虾月饼","天山可可","原料：中筋面粉、糖粉低筋面粉、猪油、水、小龙虾、五花肉、生姜、十三香调料、五香粉、胡椒碎、糖、盐。","/img/lobster/02.jpg"),
	(null,"酒香麻辣小龙虾","狼之舞","原料：小龙虾、二锅头、啤酒、招牌辣椒酱、香料干辣椒、花椒、麻椒、八角、香叶、小葱、姜、大蒜、盐。","/img/lobster/03.jpg"),
	(null,"清炒小龙虾","小春","原料：小龙虾、葱、姜、蒜头、料酒、盐、鸡精。","/img/lobster/04.jpg"),
	(null,"红烧小龙虾","浅浅_眉","原料：小龙虾、姜、蒜、八角、桂皮、香叶、料酒、酱油、白醋、油、盐。","/img/lobster/05.jpg"),
	(null,"香爆小龙虾","吃好吃的咯520","原料：小龙虾、白芝麻、盐、糖、姜、蒜、料酒、生抽、甜面酱、八角、花椒、小葱。","/img/lobster/06.jpg"),
	(null,"糟香小龙虾","万山红","原料：小龙虾、糟卤汁、料酒、姜片、葱。","/img/lobster/07.jpg"),
	(null,"香辣小龙虾","Meggy跳舞的苹果","原料：小龙虾、八角、桂皮、花椒、香叶、五香粉、干红辣椒、糖、蒜、生姜、米酒、盐、葱。","/img/lobster/08.jpg"),
	(null,"杨梅酒小龙虾","舍得的美食诱惑","原料：小龙虾、油、生姜、杨梅酒、蒜瓣、花椒、辣椒油、干辣椒、八角、红烧酱油。","/img/lobster/09.jpg"),
	(null,"十三香烧小龙虾","悦悦玉食","原料：小龙虾、洋葱、蒜头、十三香、香叶、八角、花椒、葱、姜、料酒、生抽、老抽、糖、海鲜酱。","/img/lobster/10.jpg"),
	(null,"蒜蓉炒虾球","Meggy跳舞的苹果","原料：小龙虾、蒜蓉、姜末、红辣椒、香叶、生抽、料酒、糖、油、盐。","/img/lobster/11.jpg"),
	(null,"卤汁小龙虾","一溪月","原料：小龙虾、卤料、老抽、冰糖、姜、生抽、食用油。","/img/lobsterlobster/12.jpg");

#个人主页表
create table person(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	food_name varchar(50),
	detail varchar(400),
	ingredient varchar(4000),
	steps varchar(4000),
	imgURL varchar(4000)
);
insert into person values
	(null,"凉拌腐竹花生米","腐竹要提前浸泡, 冷水泡的 泡软的腐竹用剪刀剪成小段,然后锅里水烧开 放入腐竹,煮大概三四分钟即可,捞出来沥干水待用。花生米也一样,生的花生米早上浸泡起来,锅里水烧开 泡好的花生米倒进去煮一会儿 适量芝麻油一勺生抽,半勺凉拌汁儿一勺香醋。","原料:腐竹,花生米,黄瓜,生抽,凉拌汁,香醋,辣椒油","腐竹要提前浸泡哦,冷水泡的 泡软的腐竹用剪刀剪成小段,然后锅里水烧开 放入腐竹,煮大概三四分钟即可,捞出来沥干水待用。花生米也一样,生的花生米早上浸泡起来。黄瓜外皮用刀背弄掉一些,清洗干净。黄瓜也倒进去。两勺自制的辣椒油 辣椒油做法前面发过的,自己找一下。蒜米生姜沫少许,拌匀,冰箱里放一会儿,口感更好。","null"),
	(null,"大盘鸡","鸡的话最好选择三黄鸡,嫩一些,比较容易熟。锅里上水,加入葱段,生姜片。土豆也一样,稍微大一些不然很容易就煮化掉了。鸡块丢进去,裹上糖色。加入干辣椒,八角,香叶,少许花椒继续炒香。","原料：鸡,土豆,胡萝卜,青椒,面条","鸡肉剁成稍微大一点块哈,等会儿焯水的时候会缩水。冷锅入油,加入少许冰糖小火慢慢熬糖,期间锅铲可以压一下。鸡块丢进去,裹上糖色。加入干辣椒,八角,香叶,少许花椒继续炒香。然后就是土豆块和胡萝卜也可以丢进去啦。大火煮开转中火慢慢煮吧,大概炖了三十来分钟 你们根据实际情况来。再把煮好的鸡肉和汤倒进去就可以啦 所以前面叫你们汤多留一点就是这个原因啦 不然面太干就不好吃了。","null");
#用户信息
CREATE TABLE cptx_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32) not NULL,
  email VARCHAR(64),
  phone VARCHAR(16) not NULL,
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT 
);
INSERT INTO cptx_user VALUES(NULL, 'Tom', '123456', '1232312@qq.com', '15611112222', 'public/img/1.png', '齐', '1');
INSERT INTO cptx_user VALUES(NULL, 'Mary', '123456', '2232342@qq.com', '15633334444', 'public/img/2.png', '楚', '1');
INSERT INTO cptx_user VALUES(NULL, 'Klora', '123456', '3434534@qq.com', '15655556666', 'public/img/3.png', '燕', '0');
INSERT INTO cptx_user VALUES(NULL, 'Beryl', '123456', '3435t454@qq.com', '15677778888', 'public/img/4.png', '韩', '0');
INSERT INTO cptx_user VALUES(NULL, 'Jerry', '123456', '978564r5@qq.com', '15699990000', 'public/img/5.png', '宋', '1');





















create table second(
	id int primary key auto_increment,
	img varchar(32),
	title varchar(255),
	detail varchar(255),
	bz varchar(32)
);
insert into second values
(null,"num1.jpg","美玫顶级低筋面粉 烘焙原料1kg原装  美玫顶级蛋糕粉 低筋面粉","美玫低筋小麦粉，适合制作各式蛋糕，西点及中点，如海绵蛋糕，重油蛋糕，各式馅饼等。优才优质，天然健康。烘焙界公认的最好低筋粉。","烘焙 > 烘焙面粉"),
(null,"num2.jpg","宝蓝吉柠檬汁125ml  阳光充沛西西里岛的鲜柠檬压榨而成","各种百搭又口感醇厚的柠檬汁，不论是饭菜佐料还是与饮品搭配，不枉你采购一番哦！柠檬汁就是新鲜柠檬经榨挤后得到的汁液，酸味极浓，伴有淡淡的苦涩和清香味道。...","烘焙 > 烘焙辅料"),
(null,"num3.jpg","美国原装进口 味好美香草精29ml  25块8特价","味好美香草精是由香草的豆荚天然提炼而成，创造出不可复制的美妙香味与味道，是香草精中的顶级之作。它是高级西点必备配方，赋予西点非同一般的品质和品味。美国原装进口，绝对品质保证。...","烘焙 > 烘焙辅料");

create table three(
	id int primary key auto_increment,
	img1 varchar(32),
	img2 varchar(32),
	title varchar(32),
	sdate varchar(32),
	uname varchar(32),
	img3 varchar(32),
	img4 varchar(32),
	img5 varchar(32),
	num1 int,
	num2 int ,
	num3 int
);
insert into three values
(null,"n1.jpg","nn1.jpg","吃货不再懒惰","2017-3-26","酸奶无油蛋糕","heart.png","wujiaoxing.png","xiaoxi.png",12,34,666),
(null,"n2.jpg","nn2.jpg","金凤栖梧","2017-3-19","周末早上好","heart.png","wujiaoxing.png","xiaoxi.png",12,33,236),
(null,"n3.jpg","nn3.jpg","青岛小地瓜","2017-3-25","每周一包","heart.png","wujiaoxing.png","xiaoxi.png",7,31,60);

create table lunbo(
	id int primary key auto_increment,
	title1 varchar(255),
	subtitle1 varchar(255),
	detail1 varchar(255),
	title2 varchar(255),
	subtitle2 varchar(255),
	detail2 varchar(255),
	title3 varchar(255),
	subtitle3 varchar(255),
	detail3 varchar(255)
);
insert into lunbo values
(null,"我最爱的甜品合集","文娟1234的菜单","这个世界大抵没有人能够拒绝甜品吧，甜品似乎与生俱来就有一种魔力，能够让人心情瞬间变得愉悦～","爱虾的百种方法!","萌萌虾球的菜单","这里有上百种鲜虾的做法，总有一款是你喜欢的味道，还不赶快来学一道，找机会给家人露一手","百变豆制品的美味诱惑","小美的菜单","豆腐、豆皮、豆干...你最爱的那些美味都在这啦！今天就让我们一起学学这些美味可口的豆制品菜肴吧！"),
(null,"肉食者最爱的荤凉菜","小美的菜单","天热就馋这些凉菜，有荤有素，做法简单爽口下饭，换着吃不重样！夏日必备，喜欢的快收藏～","花式面食","公主成长记的菜单","这些漂亮而简单的花式面食做法送给你，喜欢面食的亲们快收藏！让宝宝爱上吃饭～","香喷喷的鸡肉做法","惜宝很幸福","香喷喷的鸡肉加上浓浓的汁水，肉质紧致弹牙，能吃下好几碗米饭！喜欢的亲们快来收藏啦～"),
(null,"热浪袭来，清凉饮品做起来","萌萌虾球的菜单","炎热的天气怎么能少了清凉饮品？10分钟之内可以自己搞定的水果饮品，简单方便口感一级棒！","方便又快手的蒸菜","朕是醉了的菜单","天气越来越热，越来越不愿意在厨房里热火朝天地炒菜，蒸菜不仅做法简单，很大程度上节约时间","街边小吃回家做","烟雨心灵的菜单 ","下班回家的动力就是买小吃，什么街边的面包奶茶手抓饼轮流来一套，但其实这些你都可以自己做！");
#content1
create table content1(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),	
	img_url VARCHAR(500)
);
Insert into content1 values
(null,"鸡蛋紫菜汤","龙卷风中的小猫","/img/content1/01.jpg"),
(null,"西红柿炒嫰牛肉","薄荷糖的味道","/img/content1/02.jpg"),
(null,"黑椒牛排炒青红椒","蜜儿Mier","/img/content1/03.jpg"),
(null,"黑芝麻戚风蛋糕","诗韵墨香","/img/content1/04.jpg"),
(null,"家庭版小油条","诗韵墨香","/img/content1/05.jpg"),
(null,"鲜虾丝瓜豆腐汤","蕾宝呢","/img/content1/06.jpg"),
(null,"咖喱南瓜丁","诗韵墨香","/img/content1/07.jpg"),
(null,"火腿肠炒韭黄","蜜儿Mier","/img/content1/08.jpg");

#content2
create table content2(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),	
	img_url VARCHAR(500)
);
Insert into content2 values
(null,"凉拌腐竹花生米","龙卷风中的小猫","/img/content2/01.jpg"),
(null,"葱油拌面","薄荷糖的味道","/img/content2/02.jpg"),
(null,"梅菜扣肉","蜜儿Mier","/img/content2/03.jpg"),
(null,"酱爆杏鲍菇","诗韵墨香","/img/content2/04.jpg"),
(null,"凉拌木耳","诗韵墨香","/img/content2/05.jpg"),
(null,"黑椒土豆泥","蕾宝呢","/img/content2/06.jpg"),
(null,"红烧豆腐","诗韵墨香","/img/content2/07.jpg"),
(null,"芝麻南瓜饼","蜜儿Mier","/img/content2/08.jpg");

#content3
create table content3(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),	
	img_url VARCHAR(500)
);
Insert into content3 values
(null,"红烧肉","龙卷风中的小猫","/img/content3/01.jpg"),
(null,"红烧茄子","薄荷糖的味道","/img/content3/02.jpg"),
(null,"宫保鸡丁","蜜儿Mier","/img/content3/03.jpg"),
(null,"麻辣香锅","诗韵墨香","/img/content3/04.jpg"),
(null,"红烧排骨","诗韵墨香","/img/content3/05.jpg"),
(null,"糖醋排骨","蕾宝呢","/img/content3/06.jpg"),
(null,"鱼香肉丝","诗韵墨香","/img/content3/07.jpg"),
(null,"可乐鸡翅","蜜儿Mier","/img/content3/08.jpg");

#content4
create table content4(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),		
	img_url VARCHAR(500)
);
Insert into content4 values
(null,"一周最热","/img/content4/1.jpg"),
(null,"人气菜肴","/img/content4/2.jpg"),
(null,"夏季食谱","/img/content4/3.jpg"),
(null,"高颜值","/img/content4/4.jpg"),
(null,"快手菜","/img/content4/5.jpg"),
(null,"营养早餐","/img/content4/6.jpg"),
(null,"家常菜谱","/img/content4/7.jpg"),
(null,"烘焙大全","/img/content4/8.jpg"),
(null,"亲子专区","/img/content4/9.jpg"),
(null,"所有菜谱","/img/content4/10.jpg");
 
 #content5
create table content5(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),	
	img_url VARCHAR(500)
);
Insert into content5 values
(null,"红烧肉","龙卷风中的小猫","原料：带皮五花肉、老抽、生抽、料酒、冰糖、八角、姜、葱、花椒、香叶","/img/content5/1.jpg"),
(null,"红烧茄子","薄荷糖的味道","原料：圆茄子、蒜、食用油、糖、鸡精、香油、青辣椒、番茄酱、玉米淀粉、盐、老抽","/img/content5/2.jpg"),
(null,"宫保鸡丁","蜜儿Mier","原料：鸡胸肉、黄瓜、红辣椒、花生、食盐、味达美、白糖、胡椒粉、葱、姜、蒜、料酒、淀粉","/img/content5/3.jpg"),
(null,"麻辣香锅","诗韵墨香","原料：莲藕、土豆、木耳、虾、芹菜、香菜、瘦肉、香肠、豆腐皮、丸子、大葱、生姜、大蒜、生抽、黄酒、郫县豆瓣酱、白糖、十三香、干辣椒、花椒、食用油、食盐、鸡粉","/img/content5/4.jpg"),
(null,"红烧排骨","诗韵墨香","原料：排骨、杏鲍菇、干辣椒、花椒、八角、丁香、姜片、盐、老抽、生抽、料酒、冰糖、十三香","/img/content5/5.jpg"),
(null,"糖醋排骨","蕾宝呢","原料：小排、料酒、生抽、老抽、香醋、糖、盐、味精、芝麻","/img/content5/6.jpg"),
(null,"鱼香肉丝","诗韵墨香",null,"/img/content5/7.jpg"),
(null,"豇豆土豆条烧五花肉","蜜儿Mier",null,"/img/content5/8.jpg"),
(null,"经典蔓越莓饼干","蜜儿Mier",null,"/img/content5/9.jpg"),
(null,"糖醋排骨","蜜儿Mier",null,"/img/content5/10.jpg"),
(null,"可乐鸡翅","蜜儿Mier",null,"/img/content5/11.jpg"),
(null,"黑椒土豆泥","蜜儿Mier",null,"/img/content5/12.jpg"),
(null,"家常炒瓠子","蜜儿Mier",null,"/img/content5/13.jpg"),
(null,"香煎酸菜豆腐","蜜儿Mier",null,"/img/content5/14.jpg"),
(null,"鸡肉山药蒸肠","蜜儿Mier",null,"/img/content5/15.jpg"),
(null,"香肠芦笋炒饭","蜜儿Mier",null,"/img/content5/16.jpg"),
(null,"排骨炖腐竹","蜜儿Mier",null,"/img/content5/17.jpg"),
(null,"五花肉炖干笋","蜜儿Mier",null,"/img/content5/18.jpg"),
(null,"什锦杂菜米粉","蜜儿Mier",null,"/img/content5/19.jpg"),
(null,"肉末鸡蛋羹","蜜儿Mier",null,"/img/content5/20.jpg");

#content6
create table content6(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),	
	img_url VARCHAR(500)
);
Insert into content6 values
(null,"黑胡椒牛排意大利卷心粉","漫天小虾DVQGT","/img/content6/1.jpg"),
(null,"西兰花菜梗炒肉片","薄荷糖的味道","/img/content6/2.jpg"),
(null,"鲜菌汤","蜜儿Mier","/img/content6/3.jpg"),
(null,"菌汤黄瓜肉片汤","诗韵墨香","/img/content6/4.jpg"),
(null,"辣椒炒菜梗","诗韵墨香","/img/content6/5.jpg"),
(null,"茄汁蛋包饭","蕾宝呢","/img/content6/6.jpg"),
(null,"无糖全麦面包","诗韵墨香","/img/content6/7.jpg"),
(null,"豇豆土豆条烧五花肉","蜜儿Mier","/img/content6/8.jpg"),
(null,"可乐小排","蜜儿Mier","/img/content6/9.jpg"),
(null,"经典蔓越莓饼干","蜜儿Mier","/img/content6/10.jpg"),
(null,"酱牛肉","蜜儿Mier","/img/content6/11.jpg"),
(null,"百香果双响炮做法窍门","蜜儿Mier","/img/content6/12.jpg"),
(null,"凉拌鸡丝","蜜儿Mier","/img/content6/13.jpg"),
(null,"意式西瓜奶冻","蜜儿Mier","/img/content6/14.jpg"),
(null,"益禾堂烤奶茶","蜜儿Mier","/img/content6/15.jpg"),
(null,"豌豆木耳炒鸡蛋","蜜儿Mier","/img/content6/16.jpg"),
(null,"家常炒瓠子","蜜儿Mier","/img/content6/17.jpg"),
(null,"菜心蒸牛肉","蜜儿Mier","/img/content6/18.jpg"),
(null,"红丝绒蛋糕","蜜儿Mier","/img/content6/19.jpg"),
(null,"肉末茄子","蜜儿Mier","/img/content6/20.jpg");

#content7
create table content7(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),	
	img_url VARCHAR(500)
);
Insert into content7 values
(null,"西兰花菜梗炒肉片","漫天小虾DVQGT","/img/content7/1.jpg"),
(null,"辣椒炒菜梗","薄荷糖的味道","/img/content7/2.jpg"),
(null,"豇豆土豆条烧五花肉","蜜儿Mier","/img/content7/3.jpg"),
(null,"家常炒瓠子","诗韵墨香","/img/content7/4.jpg"),
(null,"菜心蒸牛肉","诗韵墨香","/img/content7/5.jpg"),
(null,"炸茄盒","蕾宝呢","/img/content7/6.jpg"),
(null,"香煎酸菜豆腐","诗韵墨香","/img/content7/7.jpg"),
(null,"小炒牛肉","蜜儿Mier","/img/content7/8.jpg"),
(null,"鸡翅根炖土豆","蜜儿Mier","/img/content7/9.jpg"),
(null,"椒盐鸡翅中","蜜儿Mier","/img/content7/10.jpg"),
(null,"排骨炖腐竹","蜜儿Mier","/img/content7/11.jpg"),
(null,"五花肉炖干笋","蜜儿Mier","/img/content7/12.jpg"),
(null,"彩椒爆黄喉","蜜儿Mier","/img/content7/13.jpg"),
(null,"红烧肘子","蜜儿Mier","/img/content7/14.jpg"),
(null,"油淋秋葵","蜜儿Mier","/img/content7/15.jpg"),
(null,"青椒炒鲜素鸡","蜜儿Mier","/img/content7/16.jpg"),
(null,"黑木耳梅豆烧中翅","蜜儿Mier","/img/content7/17.jpg"),
(null,"黄瓜炒圆白菜","蜜儿Mier","/img/content7/18.jpg"),
(null,"炒黄瓜丁","蜜儿Mier","/img/content7/19.jpg"),
(null,"东坡肉","蜜儿Mier","/img/content7/20.jpg");
#content8
create table content8(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	arthor VARCHAR(255),	
	img_url VARCHAR(500)
);
Insert into content8 values
(null,"西兰花菜梗炒肉片","漫天小虾DVQGT","/img/content8/1.jpg"),
(null,"辣椒炒菜梗","薄荷糖的味道","/img/content8/2.jpg"),
(null,"豇豆土豆条烧五花肉","蜜儿Mier","/img/content8/3.jpg"),
(null,"家常炒瓠子","诗韵墨香","/img/content8/4.jpg"),
(null,"菜心蒸牛肉","诗韵墨香","/img/content8/5.jpg"),
(null,"炸茄盒","蕾宝呢","/img/content8/6.jpg"),
(null,"香煎酸菜豆腐","诗韵墨香","/img/content8/7.jpg"),
(null,"小炒牛肉","蜜儿Mier","/img/content8/8.jpg"),
(null,"鸡翅根炖土豆","蜜儿Mier","/img/content8/9.jpg"),
(null,"椒盐鸡翅中","蜜儿Mier","/img/content8/10.jpg"),
(null,"排骨炖腐竹","蜜儿Mier","/img/content8/11.jpg"),
(null,"五花肉炖干笋","蜜儿Mier","/img/content8/12.jpg"),
(null,"彩椒爆黄喉","蜜儿Mier","/img/content8/13.jpg"),
(null,"红烧肘子","蜜儿Mier","/img/content8/14.jpg"),
(null,"油淋秋葵","蜜儿Mier","/img/content8/15.jpg"),
(null,"青椒炒鲜素鸡","蜜儿Mier","/img/content8/16.jpg"),
(null,"黑木耳梅豆烧中翅","蜜儿Mier","/img/content8/17.jpg"),
(null,"黄瓜炒圆白菜","蜜儿Mier","/img/content8/18.jpg"),
(null,"炒黄瓜丁","蜜儿Mier","/img/content8/19.jpg"),
(null,"东坡肉","蜜儿Mier","/img/content8/20.jpg"),

(null,"黑胡椒牛排意大利卷心粉","漫天小虾DVQGT","/img/content8/21.jpg"),
(null,"西兰花菜梗炒肉片","薄荷糖的味道","/img/content8/22.jpg"),
(null,"鲜菌汤","蜜儿Mier","/img/content8/23.jpg"),
(null,"菌汤黄瓜肉片汤","诗韵墨香","/img/content8/24.jpg"),
(null,"辣椒炒菜梗","诗韵墨香","/img/content8/25.jpg"),
(null,"茄汁蛋包饭","蕾宝呢","/img/content8/26.jpg"),
(null,"无糖全麦面包","诗韵墨香","/img/content8/27.jpg"),
(null,"豇豆土豆条烧五花肉","蜜儿Mier","/img/content8/28.jpg"),
(null,"可乐小排","蜜儿Mier","/img/content8/29.jpg"),
(null,"经典蔓越莓饼干","蜜儿Mier","/img/content8/30.jpg"),
(null,"酱牛肉","蜜儿Mier","/img/content8/31.jpg"),
(null,"百香果双响炮做法窍门","蜜儿Mier","/img/content8/32.jpg"),
(null,"凉拌鸡丝","蜜儿Mier","/img/content8/33.jpg"),
(null,"意式西瓜奶冻","蜜儿Mier","/img/content8/34.jpg"),
(null,"益禾堂烤奶茶","蜜儿Mier","/img/content8/35.jpg"),
(null,"豌豆木耳炒鸡蛋","蜜儿Mier","/img/content8/36.jpg"),
(null,"家常炒瓠子","蜜儿Mier","/img/content8/37.jpg"),
(null,"菜心蒸牛肉","蜜儿Mier","/img/content8/38.jpg"),
(null,"红丝绒蛋糕","蜜儿Mier","/img/content8/39.jpg"),
(null,"肉末茄子","蜜儿Mier","/img/content8/40.jpg"),

(null,"红烧肉","龙卷风中的小猫","/img/content8/41.jpg"),
(null,"红烧茄子","薄荷糖的味道","/img/content8/42.jpg"),
(null,"宫保鸡丁","蜜儿Mier","/img/content8/43.jpg"),
(null,"麻辣香锅","诗韵墨香","/img/content8/44.jpg"),
(null,"红烧排骨","诗韵墨香","/img/content8/45.jpg"),
(null,"糖醋排骨","蕾宝呢","/img/content8/46.jpg"),
(null,"鱼香肉丝","诗韵墨香","/img/content8/47.jpg"),
(null,"豇豆土豆条烧五花肉","蜜儿Mier","/img/content8/48.jpg"),
(null,"经典蔓越莓饼干","蜜儿Mier","/img/content8/49.jpg"),
(null,"糖醋排骨","蜜儿Mier","/img/content8/50.jpg"),
(null,"可乐鸡翅","蜜儿Mier","/img/content8/51.jpg"),
(null,"黑椒土豆泥","蜜儿Mier","/img/content8/52.jpg"),
(null,"家常炒瓠子","蜜儿Mier","/img/content8/53.jpg"),
(null,"香煎酸菜豆腐","蜜儿Mier","/img/content8/54.jpg"),
(null,"鸡肉山药蒸肠","蜜儿Mier","/img/content8/55.jpg"),
(null,"香肠芦笋炒饭","蜜儿Mier","/img/content8/56.jpg"),
(null,"排骨炖腐竹","蜜儿Mier","/img/content8/57.jpg"),
(null,"五花肉炖干笋","蜜儿Mier","/img/content8/58.jpg"),
(null,"什锦杂菜米粉","蜜儿Mier","/img/content8/59.jpg"),
(null,"肉末鸡蛋羹","蜜儿Mier","/img/content8/60.jpg"),
(null,"排骨炖腐竹","蜜儿Mier","/img/content8/61.jpg"),
(null,"五花肉炖干笋","蜜儿Mier","/img/content8/62.jpg"),
(null,"什锦杂菜米粉","蜜儿Mier","/img/content8/63.jpg"),
(null,"肉末鸡蛋羹","蜜儿Mier","/img/content8/64.jpg");



