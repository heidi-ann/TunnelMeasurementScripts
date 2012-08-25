import net.freehaven.tor.control.TorControlConnection;
import java.net.Socket;

public class TorControllerDemo {
	public static final void main(String[] args) {
        Socket s = new Socket("127.0.0.1", 9100);
        TorControlConnection conn = TorControlConnection.getConnection(s);
        conn.authenticate(new byte[0]); // See section 3.2
        // ...
      }
}
