require("util")
point={
	--登陆
	start黄框="961|1012|0xffd802,943|1022|0x2e2700,944|1026|0xc1a302,944|1031|0xab9101,953|1025|0x8a7501,960|1027|0x504401,970|1025|0x151200,977|1023|0x6d5c01,2|1076|0x000000,1914|4|0x000000",
	进入游戏="906|772|0x888888,948|769|0x555555,978|757|0x535353,1017|769|0x5f5f5f,843|736|0x555555,1092|796|0x565656,1914|1075|0x3f3f3f,32|1069|0x3f3f3f,227|982|0xdadada",
	账号登陆="569|757|0x909090,611|748|0xffffff,644|766|0x989898,674|757|0x565656,728|739|0x555555,479|805|0x565656,1911|1069|0x3f3f3f,14|1072|0x3f3f3f,254|1006|0xfefefe",
	--	登陆="947|865|0x666666,1908|1072|0x060606,1644|1069|0x060606,1002|1063|0x060606,23|1048|0x060606,938|859|0x363636,76|199|0xffffff,11|16|0x060606,974|874|0x5b5b5b",
	登陆="941|859|0xffffff,947|859|0xffffff,958|876|0xc6c6c6,939|856|0x363636,749|847|0x363636,77|199|0x8f8f8f,24|962|0x090909,157|1002|0xffffff,970|872|0xffffff",
	账号={1045,652},
	密码={1045,727},
	密码错误="953|751|0xffffff,962|760|0x111111,1055|769|0x0e0e0e,692|496|0x5e5e5e,743|478|0xa3a3a3,776|490|0x5d5d5d,941|487|0x5a5a5a,974|505|0xd6d6d6,14|1060|0x070707",
	登陆认证失效="965|761|0x282828,960|751|0xffffff,1030|741|0x1a1a1a,715|486|0xffffff,770|491|0xffffff,835|501|0x555555,915|501|0xffffff,970|506|0xffffff,1890|256|0x333333",
	记忆模糊="956|737|0xffffff,960|760|0x141414,1072|756|0x101010,637|482|0x383838,708|493|0xf4f4f4,682|505|0xffffff,836|490|0xffffff,862|505|0xffffff,1893|1066|0x4a4a4a",
	今日配给="961|922|0x232121,906|232|0xabaaaa,999|100|0x8e8c85,1035|79|0x8b8a88,56|34|0x161616,1893|1069|0x1c1c1c,1019|236|0xb2b2b2,1027|248|0xb2b2b2,1029|228|0xb2b2b2",
	签到返回="1809|87|0x595959,1770|114|0x595959,1809|144|0x595959,167|138|0xffffff,195|180|0xffffff,195|190|0xffffff,303|146|0xffffff,303|155|0xffffff,1803|984|0xf4b800",
	活动公告返回="1830|87|0x595959,1860|108|0x595959,1881|66|0x595959,62|90|0x060606,592|161|0x686868,651|168|0x363636,648|180|0x313131,639|180|0x5f5f5f,708|186|0x464646",
	系统公告返回="1855|86|0xc1c1c1,1855|45|0x595959,1893|79|0x595959,971|164|0x444444,970|168|0xcdcdcd,970|171|0x353535,970|174|0xaeaeae,971|187|0xc7c7c7,887|149|0x686868,57|95|0x060606,917|187|0xb3b3b3,916|200|0xbbbbbb",
	--面板
	--	面板="0|0|0xffffff,108|12|0xffffff,213|-3|0xffffff,351|-24|0xffffff,1477|339|0xfbfbf9,1492|450|0x323232,1504|630|0x454545,1219|633|0x4bc1e7,1246|903|0xdbdbdb",
	面板="1077|822|0xffffff,1067|957|0xffffff,1872|672|0x454545,407|40|0xffffff,267|50|0xffffff,157|75|0xffffff,52|55|0xffffff,1781|912|0xffffff,1466|927|0x323232",
	面板基建={1545,936},
	面板任务={1216,906},
	面板采购中心={1258,744},
	面板公开招募={1510,768},
	面板干员寻访={1759,777},
	面板干员={1573,534},
	面板作战={1516,279},
	面板邮件={288,57},
	--任务
	见习任务="782|35|0x313131,782|40|0xe1e1e1,817|45|0x717171,822|55|0xdedede,847|60|0x696969,887|45|0x909090,17|15|0xffffff,187|80|0x313131,732|75|0xffffff",
	日常任务="1086|42|0xe0e0e0,1089|51|0x7c7c7c,1104|45|0xd7d7d7,1128|42|0x878787,1089|63|0x3f3f3f,1014|54|0xffffff,57|63|0xa0a0a0,717|33|0x000000,747|60|0xe1e1e1",
	周常任务="1388|43|0xcfcfcf,1403|55|0xababab,1430|52|0x383838,1388|61|0x828282,1373|58|0x7e7e7e,1349|52|0xfbfbfb,1319|79|0xa6a6a6,34|28|0x313131,54|60|0x929292,623|41|0xffffff",
	
	--	见习任务="0|0|0xffffff,30|-9|0x6a6a6a,57|-21|0xc9c9c9,99|-12|0xbcbcbc,279|-18|0xe1e1e1,852|-51|0xffffff,903|-30|0x000000,1140|18|0xe1e1e1,714|-15|0x4e4e4e",
	--	日常任务="0|0|0xe1e1e1,57|15|0xffffff,87|21|0x313131,141|-6|0xafafaf,162|-6|0xa2a2a2,201|-9|0x757575,249|-24|0x313131,237|-12|0xdedede,243|0|0xe0e0e0",
	--	周常任务="0|0|0xffffff,48|9|0xd9d9d9,66|12|0x313131,3|21|0xf5f5f5,120|3|0x313131,165|6|0xe1e1e1,165|21|0xdfdfdf,24|36|0xffffff,18|-18|0x4c4c4c",
	--	日常任务蓝=nil,
	--	日常任务蓝=nil,
	物品确认=nil,
	--基建
	进驻总览="0|0|0x535253,6|15|0x545354,66|30|0x7c7c7c,99|30|0xe4e4e4,165|69|0xffffff,210|162|0x787878,72|123|0x949394,6|198|0x949394,-9|165|0xececec",
	贸易站={68,457},
	制造站={{404,466},
		{26,625},
		{80,772},
		{404,769},
		{724,769},
	},
	会客厅={1840,313},
	发电站={{
		   	722,468
			},{
			252,618
			},{
			567,618
		}},
	加工站={1898,400},
	办公室={1913,661},
	训练室={1893,788},
	宿舍={{1210,472},{1210,631},{1210,778}},
	控制中枢={1265,234},
	返回={51,36},
	--	返回 = "51|36|0x2f2f2f,72|42|0xf5f5f5,96|39|0x2f2f2f,42|63|0x2f2f2f,57|57|0xf5f5f5,87|54|0x2f2f2f,45|81|0x2f2f2f,78|78|0xcacaca,99|69|0x2f2f2f",
	进驻信息="78|417|0xffffff,120|391|0xffffff,62|471|0xffffff,80|491|0xffffff,59|58|0xe1e1e1,65|58|0x333333,50|43|0x313131,365|40|0xc5c5c5,134|442|0xffffff",
	进驻信息选中="72|416|0x000000,82|391|0x000000,122|391|0x000000,75|486|0x000000,78|492|0x000000,91|491|0x000000,123|210|0xffffff,63|65|0xffffff,1892|16|0xffffff",
	--	进驻信息选中="80|415|0x000000,77|394|0x000000,104|394|0x000000,122|394|0x000000,98|418|0x000000,125|424|0x010101,146|481|0x000000,80|478|0x4d4d4d,29|445|0xd4d4d4",
	会客厅进驻信息="83|390|0xffffff,101|399|0xffffff,125|390|0xffffff,128|426|0xffffff,151|469|0xffffff,146|493|0xffffff,61|58|0x4d4d4d,389|45|0xd2d2d2,49|493|0xffffff",
	宿舍进驻信息="99|418|0xffffff,75|403|0xffffff,96|370|0xffffff,63|67|0xdddddd,60|58|0xa3a3a3,66|37|0x313131,399|67|0x343434,534|34|0x313131,149|445|0xffffff",
	宿舍进驻信息选中="74|372|0x000000,59|457|0x000000,125|372|0x000000,80|423|0x000000,125|420|0x000000,49|457|0x000000,101|243|0xffffff,57|59|0xffffff,1902|24|0xffffff",
	会客厅进驻信息选中="77|396|0x000000,122|393|0x000000,80|471|0x000000,49|481|0x000000,110|624|0xffffff,92|210|0xffffff,58|57|0xffffff,1899|15|0xffffff,74|488|0x000000",
	控制中枢进驻信息="72|411|0xffffff,675|54|0xffffff,696|66|0x2e2e2e,720|54|0x707070,726|54|0x2e2e2e,774|54|0x2e2e2e,780|57|0xfdfdfd,58|60|0xffffff,96|411|0xffffff,1747|60|0x333333",
	控制中枢进驻信息选中="97|423|0x000000,664|50|0x7f7f7f,667|56|0x171717,656|71|0x747474,677|71|0x7a7a7a,65|66|0xffffff,737|50|0x404040,784|60|0x7e7e7e,1913|21|0xffffff",
	清空="1769|30|0x313131,1817|39|0x313131,1844|57|0x313131,1775|54|0xeaeaea,1766|57|0xdedede,1634|51|0x7c7c7c,1880|60|0xfafafa,1829|60|0xe8e8e8,1775|57|0xeaeaea",
	清空确认="1248|757|0xe5d3d3,810|490|0x858585,879|490|0x797979,924|499|0x333333,1119|748|0x721717,1203|727|0x751313,1143|496|0x333333,735|502|0x333333,654|487|0xf6f6f6",
	清空完毕进驻="1557|205|0xfffefe,1491|223|0x313131,1737|217|0x313131,1788|49|0x4b4b4b,1842|64|0x2f2f2f,1845|1018|0x494949,1836|1033|0x353535,1831|1041|0x6f6f6f,1845|1041|0x525252",
	清空完毕进驻2="1561|182|0xfffefe,1571|212|0xfffefe,1861|137|0x313131,1736|17|0x313131,1696|42|0xffffff,1766|42|0xf3f3f3,1831|1041|0x6f6f6f,1832|1036|0xd9d9d9,1832|1020|0x818181,1843|1019|0x6f6f6f,1845|1022|0x8f8f8f,1844|1039|0xadadad,1845|1042|0xadadad,1839|1031|0xb8b8b8,1834|1033|0xdcdcdc",
	进驻多干员="747|1009|0xd9d9d9,690|988|0x313131,714|1003|0xb3b3b3,786|1015|0x7f7f7f,819|1015|0x333333,690|1036|0x313131,855|985|0x313131,831|1015|0x444444,528|919|0xf4f4f5",
	干员选择界面="362|277|0xffffff,353|283|0x989898,380|295|0xffffff,407|331|0xacacac,455|334|0xdfdfdf,488|325|0xfbfbfb,488|292|0x989898,461|268|0xffffff,586|358|0x989898",
	干员选择={
		{746,286},
		{746,718},
		{950,286},
		{950,718},
		{1169,286},
		{1169,718},
	},
	干员选择确认="1770|1021|0x0075a8,1737|1000|0xafd4e4,1746|1000|0x1d85b2,1767|1006|0x0075a8,1794|1006|0xffffff,1803|1030|0xffffff,1755|1024|0xedf5f9,1746|1021|0x0075a8,1737|1018|0xd5e8f1",
	撤下干员确认="1263|766|0x872d2d,1179|757|0x791818,942|733|0x0f0f0f,936|493|0xf7f7f7,573|475|0x626262,651|490|0x494949,684|499|0x787878,879|478|0x333333,873|490|0xf6f6f6",
	--订单
	--	订单无="47|913|0x253b43,131|886|0xd2d7d9,122|913|0xffffff,110|934|0xf2f3f4,128|937|0xffffff,80|412|0xffffff,125|211|0xffffff,59|55|0xf9f9f9,1729|55|0x333333",
	订单无="327|315|0x242424,327|285|0x242424,322|345|0x242424,652|45|0xe8e8e8,662|70|0xfafafa,707|50|0xc5c5c6,702|70|0x767677,57|65|0x3d3d3d,12|280|0x00b3fd",
	订单="759|918|0xffffff,582|942|0x373737,51|867|0x253b43,99|411|0xffffff,60|51|0x6a6a6a,411|63|0xdbdbdb,54|999|0x253b43,33|1056|0x2b2b2b,15|813|0x2b2b2b",
	订单蓝="612|408|0x00b3fd,411|264|0x00b3fb,714|786|0x00b3fd,441|168|0x43484f,501|156|0xffffff,540|168|0xe5e6e7,57|66|0x323232,399|39|0xd6d6d6,1729|57|0x333333",
	离开基建确认="1266|765|0x6f1414,1257|744|0xffffff,1272|780|0xffffff,891|429|0xb2b2b2,906|453|0x333333,933|447|0x333333,1092|441|0x333333,1131|453|0xa1a1a1,15|270|0xe2e2e2",
	制造站列表={
		{200,300},
		{200,430},
		{200,560},
		{200,690},
		{200,820},
	},
	制造站进驻信息="629|912|0x393939,16|822|0x2b2b2b,124|426|0xffffff,94|255|0xc0bdb5,58|60|0xffffff,658|45|0xefefef,700|69|0x4c4c4c,670|72|0xededed,1732|54|0x333333",
	制造站设施列表="652|46|0xfbfbfb,657|61|0xffffff,677|76|0x8d8d8d,697|61|0x363636,702|46|0x8b8b8b,57|61|0xfcfcfc,397|56|0xd8d8d8,1758|972|0xffffff,1818|1022|0x7a6900",
	制造站最多={1438,308},
	执行更改="1424|901|0x00a5ef,1424|880|0xffffff,1439|895|0xffffff,1469|883|0x00a5ef,1361|844|0x00a5ef,1283|787|0xffffff,1298|793|0x202020,1322|796|0xffffff,1406|802|0xececec",
	--作战
	作战主线={200,1027},
	作战物资筹备={323,1027},
	作战芯片搜索={551,1027},
	作战骑兵与猎人={1032,1027},
	骑兵与猎人行动地图={1360,600},
	骑兵与猎人={
		{1275,575},{1380,400}
	},
	物资筹备={
		{285,580},{677,580},{1085,580},
	},
	芯片搜索={
		{387,471},{777,471}
	},
	--	作战最后={
	--		"917|613|0x00b3fd,923|589|0x1292d0,935|604|0x029ee6,932|622|0x009de7,917|628|0x019fe4,899|613|0x0190d2,947|598|0xf4f4f4,959|598|0xfefefe,950|631|0xf0f0f0"
	--		,{1,0,1}
	--	},
	--作战最后={"492|651|0x00abf5,507|656|0x02a7f1,507|676|0x00a0ea,497|681|0x00a3e9,477|666|0x009de7,502|636|0x000000",{1,0,1}},
	作战5="1321|266|0x00b3fd,1320|244|0x0c80b1,1338|256|0x0086c0,1336|278|0x0394d0,1319|286|0x0197d9,1299|266|0x008dcf,1296|264|0xf4fafc",
	作战最后="926|606|0x00b0fa,928|617|0x01aff9,913|618|0x00b0fa,913|604|0x00b0fa,920|577|0x000000",
	--	代理指挥开="1713|897|0x474a4a,1734|875|0x474a4a,1726|883|0x474a4a,1738|896|0x4f5252,1752|875|0x474a4a,1772|887|0x474a4a,1844|874|0x474a4a,1851|1026|0x0076a9,1608|888|0xffffff",
	--	代理指挥关="1713|882|0xaaaaaa,1728|885|0xaaaaaa,1752|894|0x222222,1806|891|0xaaaaaa,1854|1020|0x0078ab,65|63|0x3a3a3a,1599|894|0x171819,1449|960|0xf1f1f1,1533|957|0xf3f3f3",
	--代理指挥开="1597|882|0xffffff,1712|887|0x474a4a,1727|872|0x777979,1732|902|0x505353,1757|877|0x4e5151,1797|882|0x828484,1807|897|0x474a4a,1837|877|0xa7a7a7,1892|31|0x242424",
	--代理指挥关="1602|887|0x181919,1687|892|0x1e1e1e,1712|897|0x666666,1727|892|0x979797,1737|902|0xaaaaaa,1732|882|0x262626,1897|15|0x242424,1832|887|0x8f8f8f,1807|897|0xaaaaaa",
	代理指挥关="1757|888|0xaaaaaa,1855|957|0x0094d6,1855|1017|0x0079ab,1565|947|0x0099dd,1565|1027|0x004f75,1896|46|0x242424,182|56|0x313131",
	代理指挥开="1748|885|0x474a4a,1855|957|0x0094d6,1855|1017|0x0079ab,1565|947|0x0099dd,1565|1027|0x004f75,1896|46|0x242424,182|56|0x313131",
	行动结束="76|902|0xffffff,341|987|0xffffff,76|942|0xffffff,261|992|0xffffff,166|932|0xffffff,176|892|0xffffff,226|927|0xffffff,251|967|0xffffff,326|907|0x030303",
	开始行动蓝={1722,990},
	开始行动红="1605|733|0xffffff,1629|742|0xffffff,1659|688|0x4b0901,1716|646|0x832901,1683|829|0xfffffc,1620|877|0x601c0b,1740|958|0xc14600,68|58|0x313131,407|61|0xd8d8d8",
	--	放弃行动返回="434|850|0xf8f8f8,458|883|0x0c0c0c,476|844|0xffffff,1346|850|0x7c1d1d,1376|859|0xfcfafa,1430|859|0x741414,1487|871|0xffffff,1908|892|0x6d0a0a,1905|385|0xe8e8e8",
	代理失误放弃行动="586|738|0xffffff,577|743|0xffffff,578|775|0xffffff,587|776|0xffffff,599|775|0xffffff,630|752|0xffffff,661|753|0xffffff,653|762|0xffffff,644|736|0xffffff,3|250|0xe5e5cd,1912|247|0xe8e8e8,1909|811|0x6d0a0a,15|805|0x313129",
	选择右 = {434,850},
	接管作战="692|942|0x313131,722|997|0xffffff,702|997|0xffffff,782|967|0xffffff,787|987|0xffffff,802|972|0x656565,822|987|0xffffff,1787|76|0xffffff,1812|76|0xffffff",
	--任务
	任务蓝="1665|186|0x0098dc,1665|241|0x0098dc,1800|216|0xe1e1e1,1510|241|0x0098dc,180|11|0xffffff,270|61|0x313131,400|56|0xd8d8d8,1415|151|0x313131",
	任务黑="1573|196|0x313131,1613|201|0x313131,1498|166|0x313131,1797|211|0xe1e1e1,257|6|0xffffff,237|56|0x313131,417|66|0xd8d8d8,1467|156|0xdddddd",
	理智兑换="398|810|0x191717,408|810|0xffffff,483|790|0x1f1f17,658|770|0x0c0c0c,893|280|0xffffff,988|165|0xffffff,1068|210|0xffffff,1073|305|0xffffff,1897|407|0xe8e8e8",
	信赖圈蓝="648|563|0xffffff,651|567|0xffffff,648|592|0xffffff,669|594|0xffffff,670|566|0xffffff,659|609|0x00c4dc",
	信赖圈红="1440|566|0xffffff,1463|567|0xffffff,1441|583|0xffffff,1440|593|0xffffff,1462|581|0xffffff,1456|586|0xffffff,1463|594|0xffffff,1450|613|0xe76309",
	新手任务="203|319|0xdcf2fa,221|322|0x58c1e8,266|340|0x6bc8ea,221|343|0xeaf7fc,200|340|0xd0eef8,128|337|0xffffff,1863|115|0xcacaca,1869|139|0x595959",
	右返回={1863,112},
	线索={706,935},
	信用奖励有="1186|850|0x2b8cb7,1183|871|0x0879ab,1192|874|0x0075a8,1216|865|0xa6cfe1,1231|871|0xedf5f9,1480|160|0x8b8b8b,1483|169|0x595959,1471|163|0xbfbfbf,60|58|0xd0d0d0",
	信用奖励无="1181|857|0x808080,1184|860|0x7f7f7f,1184|865|0x808080,1186|870|0x808080,1185|878|0x7c7c7c,1229|860|0x797979,1237|878|0x7e7e7e,60|62|0xf3f3f3,1340|896|0x565656",
	线索数最大="1186|850|0x2b8cb7,1183|871|0x0879ab,1192|874|0x0075a8,1216|865|0xa6cfe1,1231|871|0xedf5f9,1522|208|0x060607,1628|269|0xffffff,1656|289|0xffffff,60|58|0xd0d0d0",
	已达线索上限="514|914|0x959595,514|917|0xb1b1b1,521|920|0xd4d4d4,621|921|0xa3a3a3,624|921|0xdbdbdb,624|918|0xd4d4d4,623|911|0xb0b0b0,634|932|0xb9b9b9,649|930|0xb6b6b6,656|927|0xb6b6b6,60|59|0xa8a8a8,1484|117|0x595959,1340|897|0x0076a7",
	线索布置={
"581|336|0xffffff,665|219|0xff6801,60|59|0xa8a8a8,602|58|0xc2c2c2,590|51|0xb2b2b2,1848|995|0xffffff,671|54|0xe8e8e8,692|66|0xc4c4c4,672|65|0x9d9d9d", --1
"880|400|0xffffff,967|331|0xff6801,60|59|0xa8a8a8,602|58|0xc2c2c2,590|51|0xb2b2b2,1848|995|0xffffff,671|54|0xe8e8e8,692|66|0xc4c4c4,672|65|0x9d9d9d",
"1183|306|0xffffff,1273|189|0xff6801,60|59|0xa8a8a8,602|58|0xc2c2c2,590|51|0xb2b2b2,1848|995|0xffffff,671|54|0xe8e8e8,692|66|0xc4c4c4,672|65|0x9d9d9d",
"1524|385|0xffffff,1590|256|0xff6801,60|59|0xa8a8a8,602|58|0xc2c2c2,590|51|0xb2b2b2,1848|995|0xffffff,671|54|0xe8e8e8,692|66|0xc4c4c4,672|65|0x9d9d9d",
"1005|765|0xffffff,1086|651|0xff6801,53|60|0x5a5a5a,595|57|0xc3c3c3,594|53|0xa4a4a4,592|48|0xa5a5a5,593|39|0x8b8b8b,657|55|0xebebeb,659|64|0xa8a8a8,665|64|0x919191,672|65|0x9d9d9d,697|49|0x898989",
"1306|681|0xffffff,1396|564|0xff6801,60|59|0xa8a8a8,602|58|0xc2c2c2,590|51|0xb2b2b2,1848|995|0xffffff,671|54|0xe8e8e8,692|66|0xc4c4c4,672|65|0x9d9d9d",
"655|678|0xffffff,748|600|0xff6801,60|59|0xa8a8a8,602|58|0xc2c2c2,590|51|0xb2b2b2,1848|995|0xffffff,671|54|0xe8e8e8,692|66|0xc4c4c4,672|65|0x9d9d9d"
	},
	解锁线索="1035|959|0xb3b3b3,1039|968|0x5c5c5c,1041|974|0x999999,1042|990|0xc2c2c2,1056|986|0x404040,1057|969|0xa8a8a8,1074|966|0xbcbcbc,1078|976|0x7e7e7e,1092|973|0xdddddd,60|59|0xa8a8a8,627|53|0x424242,622|54|0x7d7d7d",
	解锁线索右={1192,981},
	线索库列表1={1645,369},
	会客厅信用奖励="1778|242|0xffffff,1817|263|0xffffff,1814|248|0xffffff,1781|296|0xffffff,1841|992|0xffffff,49|41|0x313131,604|53|0xffffff",
	会客厅线索接收={1800,400},
	线索全部收取有="1506|1031|0x20749b,1521|1038|0xffffff,1566|1023|0x106b94,1596|1023|0x3683a5,1637|1027|0xd7e7ed,1911|978|0x106b94,1288|1061|0x5d9fc1,1915|7|0xe4e4e4,56|56|0x6a6a6a",
	线索全部收取无="1479|534|0x454545,1481|530|0x505050,1479|528|0x646464,1484|530|0x595959,1496|532|0x747474,1520|533|0x565656,1524|533|0x545454,1523|537|0x6d6d6d,1524|543|0x6b6b6b,1525|541|0x717171,1912|2|0xe4e4e4,60|60|0xafafaf",
	确认="958|735|0xffffff,943|745|0xffffff,948|775|0xffffff,953|790|0x0e0e0e,983|765|0xffffff,973|750|0x0f0f0f,958|765|0x141414,948|755|0x999999,1743|275|0x333333",
	-- todo 收取全部邮件有 may not right
	收取全部邮件有="1632|989|0xffffff,1837|183|0x1e1e1e,1619|1011|0xffffff,1613|1003|0xffffff,1605|1005|0xffffff,81|57|0x555555,54|48|0xffffff,336|69|0x313131,81|982|0xffffff",
	收取全部邮件无="1650|162|0xffffff,1525|155|0xffffff,1619|1011|0xffffff,1613|1003|0xffffff,1605|1005|0xffffff,81|57|0x555555,54|48|0xffffff,336|69|0x313131,81|982|0xffffff",
	可露希尔推荐="21|136|0xffffff,264|136|0xffffff,171|214|0xffffff,58|61|0xffffff,611|42|0xffffff,39|135|0x9a0101,21|159|0xffffff,15|165|0x9a0101,57|189|0x9a0101",
	信用交易所="1675|163|0xffffff,1681|183|0xff6801,1683|194|0xffffff,67|48|0xffffff,611|41|0xffffff,1900|1068|0x313131,1780|168|0xffffff,1774|163|0x313131,1762|171|0x313131",
	收取信用="1456|57|0xdc6311,1681|183|0xff6801,1683|194|0xffffff,67|48|0xffffff,611|41|0xffffff,1900|1068|0x313131,1780|168|0xffffff,1774|163|0x313131,1762|171|0x313131",
	收取信用无="1465|57|0x313131,1681|183|0xff6801,1683|194|0xffffff,67|48|0xffffff,611|41|0xffffff,1900|1068|0x313131,1780|168|0xffffff,1774|163|0x313131,1762|171|0x313131",
	信用交易所列表={{582,405},{964,405},{1341,405},{1714,405},},
	购买物品="1294|864|0xffffff,1242|873|0xff6800,1077|921|0x313131,1567|246|0x313131,1474|861|0xfffcfa,60|55|0xffffff,36|42|0x313131,1331|854|0xffffff,1386|881|0xff6800",
	信用不足="1608|177|0xffffff,30|39|0x313131,1620|178|0xffffff,1630|156|0xffffff,1639|156|0xffffff,1640|170|0xffffff,1674|173|0xffffff,1684|54|0xff6802,1210|864|0xf56400",
	--	聘用候选人="405|971|0xffffff,378|1002|0xf0f0f0,379|973|0xffffff,405|970|0xecf7fc,458|973|0xe7f5fb,468|989|0xf9fafa,593|1008|0xeaebec",
	聘用候选人="1326|556|0xffffff,1327|585|0xffffff,1337|592|0xffffff,1352|592|0xffffff,1541|591|0xffffff,1523|554|0xffffff,1375|557|0xffffff,1434|557|0xffffff",
	开包skip="1830|46|0xffffff,1839|52|0xffffff,1852|77|0xffffff,1852|88|0xffffff,1843|88|0xffffff,1827|81|0xffffff",
	开始招募干员="457|435|0xffffff,486|435|0xffffff,486|407|0xffffff,514|434|0xffffff,495|522|0xffffff,466|531|0xffffff,379|531|0xffffff,590|532|0xffffff,591|503|0xffffff",
--	会客厅传递线索="1809|559|0xffffff,1821|604|0xffffff,1767|604|0xffffff,1767|424|0xffffff,1782|397|0xffffff,1782|241|0xffffff,605|40|0x3c3c3c,56|49|0x313131,1833|978|0xffffff",
	会客厅传递线索="1780|594|0xffffff,1780|608|0xffffff,1771|610|0xffffff,1764|589|0xffffff,1771|417|0xffffff,1780|396|0xffffff,1810|400|0xffffff,1780|239|0xffffff,608|54|0xffffff,590|60|0xffffff,61|58|0x828282,393|60|0xe0e0e0,546|24|0x313131,1831|880|0xffffff",
	传递线索返回="1864|56|0xffffff,1|81|0xffffff,643|1078|0xffffff,637|1074|0x2a2a2a,1872|51|0xffffff,1891|32|0xffffff,201|42|0x323232,599|103|0xffffff,248|57|0x323232",
	线索列表={{329,375},{329,651},{329,972}},
	传递列表={{1791,204},{1791,426},},
	提示关闭="173|152|0x6e6f70,193|164|0x3f3f40,196|179|0x3e3e3e,242|169|0x404040,246|152|0x575858,273|165|0x828282,281|174|0x9a9a9a,235|154|0x7a7b7b,245|154|0x6c6c6c,156|133|0x2a2b2c,304|186|0x313131",
	经验书列表={{871,207},{871,504},{871,798},{1165,207},},
	提升等级确认="1765|1014|0x0075a8,1743|1010|0xffffff,1669|975|0x0075a8,1855|1035|0x0075a8,57|59|0xffffff,15|9|0xffffff,105|54|0x313131,600|18|0xffffff",
	EXP="1507|126|0x9c9c9c,1502|121|0xd3d3d3,1509|121|0x797979,1509|129|0x575757,1513|126|0x606060,1525|124|0x313131,1527|127|0x8a8a8a,1826|137|0xffffff,57|54|0x474747,1333|882|0x313131",
	等级递增="1188|45|0x01a7f1,1189|51|0x195a77,1205|67|0x0796d6,1220|81|0x059de1,1190|81|0x0e88be,1211|44|0x039fe5,1215|59|0x098fcc,1222|59|0x01a8f3,1796|76|0xffffff,45|54|0x313131",
	等级递减="1188|45|0x01a7f1,1191|66|0x03a1e8,1206|80|0x01a8f3,1221|65|0x03a3ea,1206|65|0x2c2c2c,1211|44|0x039fe5,1215|59|0x098fcc,1222|59|0x01a8f3,1796|76|0xffffff,45|54|0x313131",
	干员列表={{150,340},{150,790}},
	--	任务灰="1502|172|0x8f8f8f,1676|172|0x8f8f8f,1799|214|0xb8b8b8,58|55|0xacacac,22|4|0xffffff,1877|268|0xeeeeee,296|154|0xe9eae9,854|274|0xeeeeee,863|178|0xeeeeee",
	任务灰="155|250|0x313131,153|91|0x313131,147|25|0x313131,55|60|0xe0e0e0,526|228|0xb1b2b1,561|19|0xffffff,555|25|0x313131",
	未能同步到相关战斗记录="964|759|0x0e0e0e,625|501|0x373737,631|495|0xffffff,626|508|0x959595,700|498|0xffffff,710|501|0xc3c3c3,718|508|0x969696,722|478|0xa0a0a0,1856|252|0x333333,956|738|0xffffff",
	我知道了="903|816|0xe2e2e2,910|819|0xa5a5a5,918|825|0x787878,921|809|0x757575,936|818|0x3e3e3e,935|814|0x2c2c2c,446|783|0x060606,1476|780|0x060606,55|1026|0xffffff,46|1041|0xffffff,1010|812|0x989898,998|832|0xd8d8d8",
	删除缓存返回="647|758|0xffffff,665|758|0x443b3b,953|701|0x0b0b0b,965|701|0x5a2222,500|482|0xefefef,500|486|0x5d5d5d,496|490|0x444444,499|504|0x3b3b3b,505|503|0xc2c2c2,1916|245|0xe9e9e9,1910|809|0x6d0a0a",
	不能为空=nil,
	停止按钮="1713|668|0xf72e2e,1698|659|0xf72e2e,1704|662|0xf72e2e,1725|689|0xf72e2e,1701|686|0xf72e2e,1698|671|0xf72e2e,1734|671|0xf72e2e,1712|655|0xf72e2e,1712|689|0xf72e2e",
	登入错误="960|755|0xffffff,721|441|0x585858,730|441|0x6c6c6c,734|440|0xcbcbcb,718|462|0xacacac,717|454|0xcfcfcf,905|442|0xc0c0c0,905|445|0x9b9b9b,923|452|0xd1d1d1,925|435|0x4c4c4c,921|436|0xeeeeee,921|443|0x7c7c7c,958|730|0xffffff,1905|257|0x333333",
	战斗记录未能同步返回="663|757|0x181010,693|410|0x343434,720|401|0x7e7e7e,729|407|0x505050,750|398|0xe7e7e7,753|416|0x545454,756|401|0xa1a1a1,801|401|0x969696,840|392|0x909090,993|398|0x333333,1910|238|0xe8e8e8",
	排序筛选确认="1414|842|0xffffff,1390|827|0x6bb8da,1447|812|0x1f98d4,1054|857|0x323232,476|235|0xffffff,430|258|0xffffff,479|253|0xffffff,424|543|0xffffff,433|561|0xffffff,460|555|0xffffff",
	排序筛选未进驻未选中="647|539|0x383838,669|542|0x888888,1428|836|0x6ebff4,1054|857|0x323232,476|235|0xffffff,430|258|0xffffff,479|253|0xffffff,424|543|0xffffff,433|561|0xffffff,460|555|0xffffff",
	排序筛选未进驻选中="551|518|0x0094d6,671|535|0x6abbdd,1428|836|0x6ebff4,1054|857|0x323232,476|235|0xffffff,430|258|0xffffff,479|253|0xffffff,424|543|0xffffff,433|561|0xffffff,460|555|0xffffff",
	排序筛选按钮={1762,70},
	与神经网络断开连接=nil,
	作战第一={510,656},
	正在释放神经递质="747|1013|0x333333,748|1020|0x303030,801|1013|0x8b8b8b,812|1016|0x737373,815|1022|0x474747,816|1025|0x303030,893|1027|0xdcdcdc,896|1033|0x7a7a7a,906|1035|0xc3c3c3",
	骑兵与猎人集市={257,500},
	骑兵与猎人支线任务={83,410},
	活动任务领取="1728|854|0x118dc6,1733|881|0xf5f5f5,1733|907|0x118dc6,1864|907|0xf0f0f0,1848|907|0x118dc6,1848|855|0x118dc6,1827|871|0xf0f0f0,1807|912|0xf3f3f3",
}
for k,v in pairs(point.线索布置) do
	k = '线索布置'..k
	point[k]=v
end
-- all department
la = {}
for i = 1,3 do table.insert(la,point.宿舍[i])end
for i = 1,5 do 	table.insert(la,point.制造站[i])end
for i = 1,3 do table.insert(la,point.发电站[i])end
table.insert(la,'控制中枢')
table.insert(la,'贸易站')
table.insert(la,'会客厅')
table.insert(la,'加工站')
table.insert(la,'办公室')
table.insert(la,'训练室')


return point,la