package io.github.eternalpro.core;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import io.github.eternalpro.model.Product;
import io.github.eternalpro.model.Tuijian;

import java.util.List;

/**
 * 全局拦截器，用于设值
 * Created by gefangshuai on 2015/3/28.
 */
public class GlobalInterceptor implements Interceptor {
    @Override
    public void intercept(ActionInvocation ai) {
        if (!ai.getControllerKey().startsWith("/admin")) {
            List<Tuijian> tuijians = Tuijian.dao.find("select * from tuijian");

            Product.Type[] types = Product.Type.values();

            ai.getController().setAttr("gTypes", types);
            ai.getController().setAttr("tuijians", tuijians);
        }
        ai.invoke();
    }
}
