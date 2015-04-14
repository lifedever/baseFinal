package io.github.eternalpro.core;

import com.jfinal.core.Controller;

import javax.servlet.http.HttpSession;

/**
 * flash 消息设置工具类
 * Created by gefangshuai on 2015-03-22-0022.
 */
public class FlashMessageUtils {

    public static void setSuccessMessage(Controller controller, String message){
        controller.getSession().setAttribute(FlashMessage.FLASH_SUCCESS, message);
    }

    public static void setInfoMessage(Controller controller, String message){
        controller.getSession().setAttribute(FlashMessage.FLASH_INFO, message);
    }

    public static void setErrorMessage(Controller controller, String message){
        controller.getSession().setAttribute(FlashMessage.FLASH_ERROR, message);
    }

    public static void setWarningMessage(Controller controller, String message){
        controller.getSession().setAttribute(FlashMessage.FLASH_WARNING, message);
    }

    /**
     * 清楚session中的所有Flash消息
     * @param session
     */
    public static void clearAll(HttpSession session){
        session.removeAttribute(FlashMessage.FLASH_SUCCESS);
        session.removeAttribute(FlashMessage.FLASH_WARNING);
        session.removeAttribute(FlashMessage.FLASH_INFO);
        session.removeAttribute(FlashMessage.FLASH_ERROR);
    }

    /**
     * 创建flash消息 通常用在@ClearInterceptor(ClearLayer.ALL)中
     * @param controller
     */
    public static void createFlash(Controller controller){
        String flash_success_message = (String) controller.getSession().getAttribute(FlashMessage.FLASH_SUCCESS);
        String flash_warnging_message = (String) controller.getSession().getAttribute(FlashMessage.FLASH_WARNING);
        String flash_info_message = (String) controller.getSession().getAttribute(FlashMessage.FLASH_INFO);
        String flash_error_message = (String) controller.getSession().getAttribute(FlashMessage.FLASH_ERROR);

        controller.setAttr(FlashMessage.FLASH_SUCCESS, flash_success_message);
        controller.setAttr(FlashMessage.FLASH_WARNING, flash_warnging_message);
        controller.setAttr(FlashMessage.FLASH_INFO, flash_info_message);
        controller.setAttr(FlashMessage.FLASH_ERROR, flash_error_message);

        FlashMessageUtils.clearAll(controller.getSession());
    }
}
