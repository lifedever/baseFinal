import com.jfinal.kit.EncryptionKit;
import org.junit.Test;

/**
 * Created by gefangshuai on 2015-05-19-0019.
 */
public class TestEncrypt {
    @Test
    public void textMd5(){
        System.out.println(EncryptionKit.md5Encrypt("user"));
    }
}
