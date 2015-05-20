package io.github.eternalpro.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;

import java.util.List;

/**
 * Created by gefangshuai on 2015-05-18-0018.
 */
@TableBind(tableName = "sec_role", pkName = "id")
public class Role extends Model<Role>{
    public static Role dao = new Role();

    public List<Role> findAll() {
        return dao.find("select * from sec_role");
    }

    public List<Role> findByUser(Long userId) {
        return dao.find("select * from sec_role r where r.id in (select role_id from sec_user_role where user_id = ?)", userId);
    }
}
