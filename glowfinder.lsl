integer i;
integer j;
integer prims;
integer tempsides;

// Returns the number of prims in the object, ignoring seated avatars
integer getNumberOfPrims()
{
    if (llGetObjectPrimCount(llGetKey()) == 0 )
    {
      return llGetNumberOfPrims();
    } // attachment
  return llGetObjectPrimCount(llGetKey());   // non-attachment
}
default
{
    touch_start(integer total_number)
    {
        prims=getNumberOfPrims();
        //llOwnerSay((string)getNumberOfPrims());

        for(i=0;i<=prims;i++)
        {
            tempsides=llGetLinkNumberOfSides(i)-1;
            llSay(0,"Prim"+(string)i);
            for(j=0;j<=tempsides;j++)
            {
                llSay(0,"Face: "+(string)j+
                " Glow: "+
                llList2String(llGetLinkPrimitiveParams(i,[PRIM_GLOW,j]),0)+
                " Color "+ llList2String(llGetLinkPrimitiveParams(i,[PRIM_COLOR,j]),0));
            }
        }
    }
}
