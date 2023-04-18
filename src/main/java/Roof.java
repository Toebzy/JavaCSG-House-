import org.abstractica.javacsg.Geometry3D;
import org.abstractica.javacsg.JavaCSG;
import org.abstractica.javacsg.JavaCSGFactory;
import org.abstractica.javaopenscad.impl.core.AGeometry;

public class Roof {
    JavaCSG csg = JavaCSGFactory.createDefault();
    public Geometry3D build(int width, int lenght, int height){

        Geometry3D roof1 = csg.box3D(width+20,lenght,15,false);
        roof1 = csg.translate3D(0,50,height).transform(roof1);
        roof1 = csg.rotate3DX(csg.degrees(45)).transform(roof1);
        Geometry3D roof2 = csg.box3D(width+20,lenght,15,false);
        roof2 = csg.translate3D(0,-50,height).transform(roof2);
        roof2 = csg.rotate3DX(csg.degrees(-45)).transform(roof2);

        Geometry3D base1 = csg.box3D(width,40,60,false);
        base1 = csg.translate3D(0,0,height-15).transform(base1);
        Geometry3D base2 = csg.box3D(width,30,41,false);
        base2 = csg.translate3D(0,25,height-15).transform(base2);
        Geometry3D base3 = csg.box3D(width,21,21,false);
        base3 = csg.translate3D(0,45,height-15).transform(base3);
        Geometry3D base4 = csg.box3D(width,30,41,false);
        base4 = csg.translate3D(0,-25,height-15).transform(base4);
        Geometry3D base5 = csg.box3D(width,21,21,false);
        base5 = csg.translate3D(0,-45,height-15).transform(base5);

        Geometry3D window3 =csg.box3D(5,30,20,false);
        window3 = csg.translate3D(50,0,110).transform(window3);

        Geometry3D bar1 =csg.box3D(2,20,2,false);
        bar1 = csg.translate3D(48,0,119).transform(bar1);
        Geometry3D bar2 =csg.box3D(2,2,20,false);
        bar2 = csg.translate3D(48,0,110).transform(bar2);

        base1 = csg.difference3D(base1,window3);

        Geometry3D chimneyBase = csg.box3D(25,25,60,false);
        chimneyBase = csg.translate3D(-15,40,height).transform(chimneyBase);
        Geometry3D chimneyHollow = csg.box3D(15,15,60,false);
        chimneyHollow = csg.translate3D(-15,40,height).transform(chimneyHollow);
        Geometry3D chimney = csg.difference3D(chimneyBase,chimneyHollow);

        var roofBase = csg.union3D(base1,base2,base3,base4,base5);
        var finalRoof = csg.union3D(roof1,roof2,roofBase,chimney,bar1,bar2);
        return finalRoof;
    }

    }

