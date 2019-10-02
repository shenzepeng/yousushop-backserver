# yousushop后台(SSM+maven开发)



```
|--yousu-mall（POM）：聚合工程、继承工程（统一管理项目的依赖版本）
	|--yousu-common（POM）---聚合工程 提供通用模块（比如POJO类，DAO类、Utils类）
		|--yousu-pojo  （jar）---将mybatis逆向工程生成的pojo类，拷贝到该工程中
		|--yousu-dao   （jar）---将mybatis逆向工程生成的mapper类和映射文件，拷贝到该工程中
		|--yousu-utils （jar）
---------------------------以下是表现层代码----------------------------------------
	|--yousu-manager-web （war）----平台管理系统的web

----------------------------以下是业务层代码-------------------------------------	
	|--yousu-manager（POM）
		|--yousu-manager-interface（jar）
		|--yousu-manager-service（war）
```