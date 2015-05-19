package io.github.eternalpro.core;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;

/**
 * 全局拦截器，用于设值
 * Created by gefangshuai on 2015/3/28.
 */
public class GlobalInterceptor implements Interceptor {
    @Override
    public void intercept(ActionInvocation ai) {
        // TODO 用于设置全局的参数，比如动态菜单的产生
        shiroRedirectToLogin(ai);
        ai.invoke();
    }

    /**
     * 检测如果请求的连接以login开头，则跳转到/login请求
     * 防止Shiro 跳转到登录界面产生：/login;JSESSIONID=a237d824-4c17-4376-b6cc-35ea1d5ca57f无法跳转到登录界面
     * @param ai
     */
    private void shiroRedirectToLogin(ActionInvocation ai) {
        if (ai.getController().getPara() != null && ai.getController().getPara().startsWith("signin;JSESSIONID=")) {
            ai.getController().redirect("/signin");
        }
    }
}
