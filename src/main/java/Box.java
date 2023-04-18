import org.abstractica.javacsg.Geometry3D;
import org.abstractica.javacsg.JavaCSG;
import org.abstractica.javacsg.JavaCSGFactory;
import org.abstractica.javaopenscad.impl.core.AGeometry;
import org.abstractica.javaopenscad.impl.core.AGeometry2D;

public class Box {
    JavaCSG csg = JavaCSGFactory.createDefault();

    public Geometry3D build(int widht, int length, int height){
        Geometry3D box = csg.box3D(widht, length, height, false);
        Geometry3D boxRim =csg.box3D(widht+5,length+5,10,false);

        Geometry3D door = csg.box3D(10,35,60,false);
        door = csg.translate3D(50,0,10).transform(door);

        Geometry3D doorframe = csg.box3D(10,45,70,false);
        doorframe = csg.translate3D(47,0,5).transform(doorframe);

        Geometry3D step1 = csg.box3D(20,45,10,false);
        step1 = csg.translate3D(50,0,0).transform(step1);
        Geometry3D step2 = csg.box3D(20,45,5,false);
        step2 = csg.translate3D(60,0,0).transform(step2);

        Geometry3D window1 =csg.box3D(5,30,30,false);
        window1 = csg.translate3D(-50,30,50).transform(window1);

        Geometry3D window2 =csg.box3D(5,30,30,false);
        window2 = csg.translate3D(-50,-30,50).transform(window2);


        Geometry3D bar1 =csg.box3D(2,90,3,false);
        bar1 = csg.translate3D(-48,0,63).transform(bar1);
        Geometry3D bar2 =csg.box3D(2,3,30,false);
        bar2 = csg.translate3D(-48,-30,50).transform(bar2);
        Geometry3D bar3 =csg.box3D(2,3,30,false);
        bar3 = csg.translate3D(-48,30,50).transform(bar3);
        Geometry3D bar4 =csg.box3D(2,3,30,false);
        bar4 = csg.translate3D(48,30,50).transform(bar4);

        Geometry3D windowBars = csg.union3D(bar1,bar2,bar3,bar4);

        Geometry3D steps = csg.union3D(step1,step2);
        box = csg.difference3D(box,door,window1,window2);
        doorframe = csg.difference3D(doorframe,door);


        return csg.union3D(box,boxRim,doorframe,steps,windowBars);
    }
}
