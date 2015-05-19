package io.github.eternalpro.shiro;

import com.jfinal.kit.EncryptionKit;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

/**
 * 基本密码验证器 (md5验证)
 * Created by gefangshuai on 2015-05-19-0019.
 */
public class CustomCredentialsMatcher extends SimpleCredentialsMatcher{
    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
        Object tokenCredentials = EncryptionKit.md5Encrypt(new String(((UsernamePasswordToken) token).getPassword()));
        Object accountCredentials = getCredentials(info);
        return equals(tokenCredentials, accountCredentials);
    }
}
