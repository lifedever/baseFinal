package io.github.eternalpro.controller;

import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import org.apache.shiro.authz.annotation.RequiresPermissions;

/**
 * Created by gefangshuai on 2015-05-18-0018.
 */
@ControllerBind(controllerKey = "/user", viewPath = "user")
public class UserController extends Controller{

    public void index(){
    }

    @RequiresPermissions("aaa")
    public void aaa(){

    }
}
