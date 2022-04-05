 list rezzeddetails;
string rezzerkey;
vector color;
list rezzerdetails;
string soulinfo;
string soulkey;
string soulname;
float holdtime;
key owner;
string version= "0.6";

vector getSoulColor(key soul)
{
    llSetLinkPrimitiveParamsFast(LINK_THIS,[
                    PRIM_POINT_LIGHT, TRUE, 
                        <((color.x)*.5),((color.y)*.5),((color.z)*.5)>,
                        1.0, 1.5, 0.0]);
    return <
    (((float)("0x" + llGetSubString((string)soul, 10, 11))/255)),
    (((float)("0x" + llGetSubString((string)soul, 15, 16))/255)),
    (((float)("0x" + llGetSubString((string)soul, 20, 21))/255))>;
}

default
{
    state_entry()
    {
        llSetObjectName("Neurocam Heavy Industries Soul Jar");
        llSetObjectDesc("Empty");
    }
    on_rez(integer sp)
    {
        owner=llGetOwner();
        rezzeddetails=llGetObjectDetails(llGetKey(),[OBJECT_REZZER_KEY]);
        rezzerkey=llList2String(rezzeddetails,0);
        rezzerdetails=llGetObjectDetails(rezzerkey,[OBJECT_DESC]);
        soulinfo=llList2String(rezzerdetails,0);
        soulkey=llGetSubString(soulinfo,0,llSubStringIndex(soulinfo,"_")-1);
        soulname=llGetSubString(soulinfo,llSubStringIndex(soulinfo,"_")+1,llStringLength(soulinfo));
        color=getSoulColor(soulkey);
        llSetColor(color,ALL_SIDES);
        if(llGetAgentSize(soulkey))
        {
            llSetText(llGetDisplayName(soulkey)+"'s Soul \n"+"Key: "+
                soulkey+"\n Color: "+(string)color,color,1);
            llSetObjectName(llGetDisplayName(soulkey)+"'s Soul Bottled "+version);
        }
        else
        {
            llSetText(soulname+"'s Soul \n"+"Key: "+
                soulkey+"\n Color: "+(string)color,color,1);
            llSetObjectName(soulname+"'s Soul Bottled "+version);
        }
        llSetTimerEvent(60.0);
        llRequestAgentData(soulkey, DATA_ONLINE);
    }
    timer() 
    {
       llRequestAgentData(soulkey, DATA_ONLINE);
    }
    dataserver(key queryid, string data)
    {
        if(data == "1")  
        {
        llSetText(soulname+"'s Soul \n"+"Key: "+soulkey+"\n Color: "+
            (string)color+"\n Online Status : Online",color,1);
        }
        if(data == "0")  
        {
        llSetText(soulname+"'s Soul \n"+"Key: "+soulkey+"\n Color: "+
            (string)color+"\n Online Status : Offline",color,1);
        }
    }
    touch_start(integer nd)
    {
        holdtime=llGetTime();
    }
    touch_end(integer nd)
    {
        if(llDetectedKey(0)==owner&&llGetTime()-holdtime>2.0)
        {
            state Locked;
        } 
    }
}
state Locked
{
    state_entry()
    {
        llSetObjectDesc("Captured by: "+llGetUsername(llGetOwner())+" at "+llGetTimestamp());
        llSetTimerEvent(60.0);   
    }
    timer() 
    {
       llRequestAgentData(soulkey, DATA_ONLINE); 
    }
    dataserver(key queryid, string data)
    {
        if(data == "1")  
        {
        llSetText(soulname+"'s Soul \n"+"Key: "+soulkey+"\n Color: "+(string)color+"\n Online Status : Online",color,1);
        }
        if(data == "0")  
        {
        llSetText(soulname+"'s Soul \n"+"Key: "+soulkey+"\n Color: "+(string)color+"\n Online Status : Offline",color,1);
        }
    }
}
