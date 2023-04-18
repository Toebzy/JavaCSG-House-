import org.abstractica.javacsg.Geometry3D;
import org.abstractica.javacsg.JavaCSG;
import org.abstractica.javacsg.JavaCSGFactory;

public class House {
    JavaCSG csg = JavaCSGFactory.createDefault();
    public Geometry3D build(int width,int length,int height) {


        Box box = new Box();
        Geometry3D house = box.build(width,length,height);

        Roof roof = new Roof();
        Geometry3D top = roof.build(width, length, height+10);

        return csg.union3D(house,top);
    }
}
