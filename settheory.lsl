list a=[1,2,3];
list b=[2,3,4];
list c;
list Union(list k, list l)
{
    integer i;
    integer index;
    list temp=[];
    for(i=0;i<=llGetListLength(k);i++)
    {
        index = llListFindList(temp,[llList2String(a,i)]);
        //llOwnerSay((string)index);
        if(index == -1)
        {
            //llOwnerSay((string)temp);
            temp+=[llList2String(a,i)];
        }
    }
    for(i=0;i<=llGetListLength(l);i++)
    {
        index = llListFindList(temp,[llList2String(b,i)]);
        //llOwnerSay((string)index);
        if(index == -1)
        {
            //llOwnerSay((string)temp);
            temp+=[llList2String(b,i)];
        }
    }
  return temp;  
}
default
{
    state_entry()
    {
        ///llSay(0, "Hello, Avatar!");
    }

    touch_start(integer total_number)
    {
        c=Union(a,b);
        llOwnerSay(llDumpList2String(c,"|"));
    }
}
