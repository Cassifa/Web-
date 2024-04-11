package zjut.lff.homework5.test3;
/*
 * @ Author     ：Li Feifei
 * @ Date       ：Created in 17:17 2024/4/11
 * @ Description：${description}
 */

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson2.JSONObject;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import zjut.lff.homework5.SessionUtil;
import zjut.lff.homework5.test2.UserBean;

import java.io.IOException;

@WebServlet(name = "AllHomeworkServlet", value = "/AllHomeworkServlet")
public class AllHomeworkServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //未登录
        if(!SessionUtil.isValid(request)){
            request.getRequestDispatcher("./test2/login.jsp").forward(request,response);
            return;
        }
        //获取作业信息
        HomeworkUtils.setServletContext(getServletContext());
        String jsonData=HomeworkUtils.getJsonHomeworks(null);
        request.getSession().setAttribute("data",jsonData);
        System.out.println(jsonData);
        //转发给前端
        request.getRequestDispatcher("./test3/homework.jsp").forward(request,response);
    }
}
