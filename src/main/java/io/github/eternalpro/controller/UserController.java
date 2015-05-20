package io.github.eternalpro.controller;

import cn.dreampie.web.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.model.User;
import org.apache.shiro.authz.annotation.RequiresRoles;

import java.util.List;

/**
 * Created by gefangshuai on 2015-05-18-0018.
 */
@RequiresRoles("user")
@ControllerBind(controllerKey = "/user", viewPath = "user")
public class UserController extends Controller {

    public void index(){
        List<User> users = User.dao.findAll();
        setAttr("users", users);
    }

}
