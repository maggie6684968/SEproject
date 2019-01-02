README 
===
tomcat的IP設置    2019/01/02
我是使用[hackmd](https://hackmd.io)編輯

---
## 0.內網IP確認方法
打開cmd輸入```ipconfig```
![](https://i.imgur.com/n0p9wEr.png)

## 1.關防火牆
就..關掉

## 2.把eclipse的檔案拉到tomcat
把專案(此用testServlet)複製到C:\apache-tomcat-7.0.92\webapps下
![](https://i.imgur.com/SXdTh7i.png)
-->C:\apache-tomcat-7.0.92\webapps\testServlet
留WebContent的東西和build的class

這樣建置
testServlet
	|
	+ --Login.jsp
	+ --Welcome.jsp
	+ --META-IN(從WebContent拿出來後都不用動)
	+ --WEB-INF
		|
		+ --classes(從build拿出來後都不用動)
		+ --lib
		+ --web.xml
		
## 3.更改conf/server.xml
1. 打開C:\apache-tomcat-7.0.92/conf/server.xml
2. 把下圖標示處
![](https://i.imgur.com/9OzmCYg.png)
改成```<Connector port="80" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" />``` 
這樣輸往址就不用再打:8080(後面有範例)
3. 把下圖標示處
![](https://i.imgur.com/L1p4qHV.png)
改成```<Engine name="Catalina" defaultHost="你的IP">```
4. 把下圖標示處
![](https://i.imgur.com/uMSV0C2.png)
改成```<Host name="你的IP"  appBase="webapps" unpackWARs="true" autoDeploy="true">```
5.  加上```<Context path="" docBase="testServlet" reloadable="true"></Context> ```
testServlet是你的網站工程名(其實我也搞不懂是什麼，反正我就設成跟專案一樣的名字)
![](https://i.imgur.com/3YJtAy5.png)

## 4.跑
1. 點```C:\apache-tomcat-7.0.92\bin\startup.bat```，打開tomcat
2. 開啟瀏覽器進入```http://localhost/testServlet/main```確定有連線到
3. 進入```192.168.1.106/testServlet/main```，畫面跟剛剛一樣，表示有成功連到內網

