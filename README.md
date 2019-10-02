# yousushop后台(SSM+maven开发)



```
|--yousu-mall（POM）：聚合工程、继承工程（统一管理项目的依赖版本）
	|--yousu-common（POM）---聚合工程 提供通用模块（比如POJO类，DAO类、Utils类）
		|--yousu-pojo  （jar）---将mybatis逆向工程生成的pojo类，拷贝到该工程中
		|--yousu-dao   （jar）---将mybatis逆向工程生成的mapper类和映射文件，拷贝到该工程中
		|--yousu-utils （jar）
---------------------------以下是表现层代码----------------------------------------
	|--yousu-manager-web （war）----平台管理系统的web
	|--yousu-business-web （war）----商家管理系统的web
	
	|--yousu-portal-web  （war）（待定---如果采用静态页面方式，就不需要此工程了）
	|--yousu-search-web	 （war）
	|--yousu-item-web	（war） （待定---如果采用静态页面方式，就不需要此工程了）
	|--yousu-sso-web	（war）  
	|--yousu-cart-web	（war）
	|--yousu-order-web	（war）
	|--yousu-pay-web	（war）
	|--yousu-usercenter-web	（war） （待定---不需要实现）
----------------------------以下是业务层代码-------------------------------------	
	|--yousu-cms（待定---如果采用静态页面方式，需要将该工程的功能集成到manager服务中）
		|--yousu-cms-interface
		|--yousu-cms-service	
	|--yousu-item（待定---如果采用静态页面方式，需要将该工程的功能集成到manager服务中）
		|--yousu-item-interface
		|--yousu-item-service
	
	|--yousu-search	（POM）----聚合工程
		|--yousu-search-interface（jar）----为了dubbo使用（dubbo使用时，需要面向interface）
		|--yousu-search-service	  （war）----为了在web容器中发布dubbo服务
	|--yousu-sso（POM）
		|--yousu-sso-interface（jar）
		|--yousu-sso-service（war）
	|--yousu-cart（POM）
		|--yousu-cart-interface（jar）
		|--yousu-cart-service（jar）
	|--yousu-order（POM）
		|--yousu-order-interface（jar）
		|--yousu-order-service（war）
		
	|--yousu-manager（POM）
		|--yousu-manager-interface（jar）
		|--yousu-manager-service（war）
	|--yousu-business（POM）
		|--yousu-business-interface（jar）
		|--yousu-business-service（war）
```