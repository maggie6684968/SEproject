Controller & Model 2018/12/29
===

我照著**執行順序**講好了:
1. 程式會從ServletController (因為他是Servlet) 開始。
2. 前面我就不說明了，反正那以後應該都不需要改，我們從28行講
```java=28
String action = request.getParameter("action");
// 取得目前使用者要執行的動作
```
這個action是從這邊表單(Form)來的，例如Login.jsp中:
```javascript=53
<Form method="post" action="main" style="height: 432px;">
 <input type="hidden" name="action" value="authenticate">
```
他會在表單(Form)傳送(submit)時，值也會傳回去。
在java這邊，我們可以透過``` request.getParameter("action") ``` 來取的form傳回來的任何Parameter。

3. 這下面就是判斷動作了，
```java=29
//下方會判斷動作，然後交給model去做，再從model取得要去的頁面
        // 若使用者身分尚未驗證，且目前的"動作"不是要進行驗證，就切到登入畫面
        if (!isAuthenticated(request) && !("authenticate".equals(action))) {
            doLogin(request, response);
            return;
        }
        if ("authenticate".equals(action)) {
        	ntustmodel.doAuthenticate(request, response);  // 執行身分驗證
            String targetURL = ntustmodel.getView();// 取得欲轉送的頁面 (view)
            if ((targetURL != null) && (targetURL != "")) {
                gotoPage(targetURL, request, response);
            }
        }
        else if ("logout".equals(action)) {
            doLogout(request, response);        // 執行登出
        }
        else {
            response.sendError(HttpServletResponse.SC_NOT_IMPLEMENTED);
        }
```
4. ServletController大蓋就這樣，我們接下來來看NTUSTmodle.java。
5. ................
6. 我懶得弄了就這樣吧，有問題直接問我好了