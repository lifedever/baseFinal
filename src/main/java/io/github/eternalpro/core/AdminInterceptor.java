package io.github.eternalpro.core;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;

/**
 * Created by gefangshuai on 2015/3/25.
 */
public class AdminInterceptor implements Interceptor {
    @Override
    public void intercept(ActionInvocation ai) {
        String controllerKey = ai.getControllerKey();
        if (controllerKey.startsWith("/admin")) {
            // TODO 需完成登录验证
        }else{
            ai.invoke();
        }
    }
}
