package io.github.eternalpro.model;

import com.jfinal.ext.plugin.tablebind.TableBind;
import com.jfinal.plugin.activerecord.Model;

import java.util.List;

/**
 * Created by gefangshuai on 2015-05-18-0018.
 */
@TableBind(tableName = "sec_permission", pkName = "id")
public class Permission extends Model<Permission> {
    public static Permission dao = new Permission();

    public List<Permission> findByRole(Long roleId) {
        return dao.find("select * from sec_permission t where t.id in (select permission_id from sec_role_permission where role_id = ?)", roleId);
    }
}
