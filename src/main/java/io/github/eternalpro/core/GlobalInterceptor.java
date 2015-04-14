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
        ai.invoke();
    }
}
