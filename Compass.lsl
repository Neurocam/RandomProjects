vector eul;
float xval;
float yval;
float degrees;
string dir;
default
{
    moving_end()
    {
        eul=llRot2Euler(llGetRot());
        xval=llCos(eul.z);
        yval=llSin(eul.z);
        if(xval>0 && yval>0)
        {
            degrees=90-(eul.z*RAD_TO_DEG);
        }
        else if(xval<0 && yval>0)
        {
            degrees=(360-(eul.z*RAD_TO_DEG))+90;
        }
        else if(yval<0)
        {
            degrees=90+-1*(eul.z*RAD_TO_DEG);
        }
        if((degrees>22.5) && (degrees<67.5))
        {
            dir="Northeast";
        }
        else if((degrees>67.5) && (degrees<112.5))
        {
            dir="East";
        }
        else if((degrees>112.5) && (degrees<157.5))
        {
            dir="Southeast";
        }
        else if((degrees>157.5) && (degrees<202.5))
        {
            dir="South";
        }
        else if((degrees>202.5) && (degrees<247.5))
        {
            dir="Southwest";
        }
        else if((degrees>247.5) && (degrees<292.5))
        {
            dir="West";
        }
        else if((degrees>292.5) && (degrees<337.5))
        {
            dir="Northwest";
        }
        else
        {
            dir="North";
        }
        
        llSetText("  "+dir+" \n "+(string)((integer)degrees),<1.0,1.0,1.0>,1.0);
    }
}