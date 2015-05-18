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

    public List<Permission> findByRole(Long id) {
        return null;
    }
}
