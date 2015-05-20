package io.github.eternalpro.controller;

import com.jfinal.core.Controller;
import com.jfinal.ext.route.ControllerBind;
import io.github.eternalpro.core.FlashMessageUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.SavedRequest;
import org.apache.shiro.web.util.WebUtils;


/**
 * Created by fangshuai on 2015-04-14-0014.
 */
@ControllerBind(controllerKey = "/", viewPath = "")
public class IndexController extends Controller {

    public void index() {
    }

    public void signin() {

    }

    public void checkLogin() {
        String username = getPara("username");
        String password = getPara("password");
        Boolean rememberMe = getParaToBoolean("rememberMe", false);
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        token.setRememberMe(rememberMe);
        Subject subject = SecurityUtils.getSubject();

        try {
            subject.login(token);
            SavedRequest savedRequest = WebUtils.getSavedRequest(getRequest());
            if(savedRequest != null)
                redirect(savedRequest.getRequestUrl());
            else
                redirect("/");
        } catch (UnknownAccountException e) {
            FlashMessageUtils.setErrorMessage(this, e.getMessage());
            redirect("/signin");
        } catch (IncorrectCredentialsException e) {
            FlashMessageUtils.setErrorMessage(this, e.getMessage());
            redirect("/signin");
        } catch (LockedAccountException e) {
            FlashMessageUtils.setErrorMessage(this, e.getMessage());
            redirect("/signin");
        } catch (ExcessiveAttemptsException e) {
            FlashMessageUtils.setErrorMessage(this, e.getMessage());
            redirect("/signin");
        } catch (AuthenticationException e) {
            FlashMessageUtils.setErrorMessage(this, e.getMessage());
            redirect("/signin");
        }
    }

    public void logout(){
        SecurityUtils.getSubject().logout();
        redirect("/signin");
        //FlashMessageUtils.setSuccessMessage(this, "退出成功！");
    }
}
