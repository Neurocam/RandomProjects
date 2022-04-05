// teleport secondlife:///app/agent/6975aecf-8182-4d94-9c65-76f6344e0653/offerteleport
// im secondlife:///app/agent/6975aecf-8182-4d94-9c65-76f6344e0653/im
// call secondlife:///app/voicecallavatar/6975aecf-8182-4d94-9c65-76f6344e0653
// map secondlife:///app/maptrackavatar/6975aecf-8182-4d94-9c65-76f6344e0653
// share secondlife:///app/sharewithavatar/6975aecf-8182-4d94-9c65-76f6344e0653
// pay secondlife:///app/agent/6975aecf-8182-4d94-9c65-76f6344e0653/pay
//(N > 1) + (N * ((N <= 1) * (N >= 0)) Filter to 0-1 with decimals.

////////////////////////////////////////////////////////////////////////////////
key target_key="";
vector start_color;
vector end_color;
particles()
{
    start_color=color;
    end_color=color;
    llLinkParticleSystem(2,[
        //System Behaviour
        PSYS_PART_FLAGS,
                         //PSYS_PART_BOUNCE_MASK|
                         PSYS_PART_EMISSIVE_MASK
                         //|PSYS_PART_FOLLOW_SRC_MASK
                         |PSYS_PART_FOLLOW_VELOCITY_MASK
                         |PSYS_PART_INTERP_COLOR_MASK
                         |PSYS_PART_INTERP_SCALE_MASK
                         //|PSYS_PART_RIBBON_MASK 
                         //|PSYS_PART_TARGET_LINEAR_MASK
                         //|PSYS_PART_TARGET_POS_MASK
                         //|PSYS_PART_WIND_MASK
                         ,
        //System Presentation
        PSYS_SRC_PATTERN,
                        PSYS_SRC_PATTERN_ANGLE
                        //PSYS_SRC_PATTERN_ANGLE_CONE
                        //PSYS_SRC_PATTERN_ANGLE_CONE_EMPTY
                        //PSYS_SRC_PATTERN_DROP
                        //PSYS_SRC_PATTERN_EXPLODE
                        ,
        PSYS_SRC_BURST_RADIUS,0.12,
        PSYS_SRC_INNERANGLE,PI_BY_TWO,
        PSYS_SRC_OUTERANGLE,PI_BY_TWO,
        //PSYS_SRC_ANGLE_BEGIN,  angle_begin,     //Either or
        //PSYS_SRC_ANGLE_END,    angle_end,

        PSYS_SRC_TARGET_KEY,target_key,

        //Particle appearance
        PSYS_PART_START_COLOR,start_color,
        PSYS_PART_END_COLOR, end_color,
        PSYS_PART_START_ALPHA, 1.0,
        PSYS_PART_END_ALPHA, 0.1,
        PSYS_PART_START_SCALE, <.062,.062,0>,
        PSYS_PART_END_SCALE, <0.0,0.0,0>,
        //PSYS_SRC_TEXTURE,"fd84d3ff-3646-de3e-7b2d-7f1e6ef9a113",
        PSYS_SRC_TEXTURE,"fd84d3ff-3646-de3e-7b2d-7f1e6ef9a113",
        PSYS_PART_START_GLOW,  0.01,
        PSYS_PART_END_GLOW,    0.01,
        
        //Particle Blending
        PSYS_PART_BLEND_FUNC_SOURCE,
                                   //PSYS_PART_BF_ONE,
                                   //PSYS_PART_BF_ZERO,
                                   //PSYS_PART_BF_DEST_COLOR,
                                   //PSYS_PART_BF_SOURCE_COLOR, 
                                   //PSYS_PART_BF_ONE_MINUS_DEST_COLOR, 
                                   //PSYS_PART_BF_ONE_MINUS_SOURCE_COLOR, 
                                   PSYS_PART_BF_SOURCE_ALPHA,
                                   //PSYS_PART_BF_ONE_MINUS_SOURCE_ALPHA,
        PSYS_PART_BLEND_FUNC_DEST,
                                   //PSYS_PART_BF_ONE,
                                   //PSYS_PART_BF_ZERO,
                                   //PSYS_PART_BF_DEST_COLOR,
                                   //PSYS_PART_BF_SOURCE_COLOR, 
                                   //PSYS_PART_BF_ONE_MINUS_DEST_COLOR, 
                                   //PSYS_PART_BF_ONE_MINUS_SOURCE_COLOR, 
                                   //PSYS_PART_BF_SOURCE_ALPHA,
                                   PSYS_PART_BF_ONE_MINUS_SOURCE_ALPHA,

        //Particle Flow
        PSYS_SRC_MAX_AGE,0.0,
        PSYS_PART_MAX_AGE,0.3,
        PSYS_SRC_BURST_RATE,0.0,
        PSYS_SRC_BURST_PART_COUNT,2,

        //Particle Motion
        PSYS_SRC_ACCEL,<0,0,-2.0>,
        PSYS_SRC_OMEGA,<0,0,0>,
        PSYS_SRC_BURST_SPEED_MIN,0.0,
        PSYS_SRC_BURST_SPEED_MAX,0.0
    ]);
    llLinkParticleSystem(3,[
        //System Behaviour
        PSYS_PART_FLAGS, 
                         //PSYS_PART_BOUNCE_MASK|
                         PSYS_PART_EMISSIVE_MASK
                         //|PSYS_PART_FOLLOW_SRC_MASK
                         |PSYS_PART_FOLLOW_VELOCITY_MASK
                         |PSYS_PART_INTERP_COLOR_MASK
                         |PSYS_PART_INTERP_SCALE_MASK
                         //|PSYS_PART_RIBBON_MASK 
                         //|PSYS_PART_TARGET_LINEAR_MASK
                         //|PSYS_PART_TARGET_POS_MASK
                         //|PSYS_PART_WIND_MASK
                         ,
                         
        //System Presentation
        PSYS_SRC_PATTERN,
                        PSYS_SRC_PATTERN_ANGLE
                        //PSYS_SRC_PATTERN_ANGLE_CONE
                        //PSYS_SRC_PATTERN_ANGLE_CONE_EMPTY
                        //PSYS_SRC_PATTERN_DROP
                        //PSYS_SRC_PATTERN_EXPLODE
                        ,
                        
        PSYS_SRC_BURST_RADIUS,0.015,
        PSYS_SRC_INNERANGLE,PI_BY_TWO,
        PSYS_SRC_OUTERANGLE,PI_BY_TWO,
        //PSYS_SRC_ANGLE_BEGIN,  angle_begin,     //Either or
        //PSYS_SRC_ANGLE_END,    angle_end,
        PSYS_SRC_TARGET_KEY,target_key,
        
        //Particle appearance
        PSYS_PART_START_COLOR,start_color,
        PSYS_PART_END_COLOR, end_color,
        PSYS_PART_START_ALPHA, 1.0,
        PSYS_PART_END_ALPHA, 0.1,
        PSYS_PART_START_SCALE, <.062,.062,0>,
        PSYS_PART_END_SCALE, <0.0,0.0,0>,
        //PSYS_SRC_TEXTURE,"fd84d3ff-3646-de3e-7b2d-7f1e6ef9a113",
        PSYS_SRC_TEXTURE,"fd84d3ff-3646-de3e-7b2d-7f1e6ef9a113",
        PSYS_PART_START_GLOW,  0.01,
        PSYS_PART_END_GLOW,    0.01,
        
        //Particle Blending
        PSYS_PART_BLEND_FUNC_SOURCE,
                                   //PSYS_PART_BF_ONE,
                                   //PSYS_PART_BF_ZERO,
                                   //PSYS_PART_BF_DEST_COLOR,
                                   //PSYS_PART_BF_SOURCE_COLOR, 
                                   //PSYS_PART_BF_ONE_MINUS_DEST_COLOR, 
                                   //PSYS_PART_BF_ONE_MINUS_SOURCE_COLOR, 
                                   PSYS_PART_BF_SOURCE_ALPHA,
                                   //PSYS_PART_BF_ONE_MINUS_SOURCE_ALPHA,
        PSYS_PART_BLEND_FUNC_DEST,
                                   //PSYS_PART_BF_ONE,
                                   //PSYS_PART_BF_ZERO,
                                   //PSYS_PART_BF_DEST_COLOR,
                                   //PSYS_PART_BF_SOURCE_COLOR, 
                                   //PSYS_PART_BF_ONE_MINUS_DEST_COLOR, 
                                   //PSYS_PART_BF_ONE_MINUS_SOURCE_COLOR, 
                                   //PSYS_PART_BF_SOURCE_ALPHA,
                                   PSYS_PART_BF_ONE_MINUS_SOURCE_ALPHA,
        
        //Particle Flow
        PSYS_SRC_MAX_AGE,0.0,
        PSYS_PART_MAX_AGE,0.3,
        PSYS_SRC_BURST_RATE,0.0,
        PSYS_SRC_BURST_PART_COUNT,2,
        
        //Particle Motion
        PSYS_SRC_ACCEL,<0,0,-2.0>,
        PSYS_SRC_OMEGA,<0,0,0>,
        PSYS_SRC_BURST_SPEED_MIN,0.0,
        PSYS_SRC_BURST_SPEED_MAX,0.0

    ]);
}
////////////////////////////////////////////////////////////////////////////////
integer rezflag;

////////////////////////////////////////////////////////////////////////////////
integer listencall;
string targetname;

key infokey;
key infonamekey;
string infoname;
key infokeyonline;

key httpkey;
string httpname;

integer i;
vector color;
key UUID;
string UUIDname;

list simkeysraw;
list simnamekeymerged;

key owner;
integer permcheck;
vector targetpos;
vector currentpos;
list gparams;
vector offset=<0.0,0.02,0.0>;
integer switch=0;

integer RezAllowed()
{
    vector pos = llGetPos();
    integer gpf = llGetParcelFlags(pos);
    string parceldetails = llList2String(llGetParcelDetails(pos,
        [PARCEL_DETAILS_GROUP]),0);
    string objectdetails = llList2String(llGetObjectDetails(llGetKey(),
        [OBJECT_GROUP]),0);
    return (gpf & PARCEL_FLAG_ALLOW_CREATE_OBJECTS) || 
    ((gpf & PARCEL_FLAG_ALLOW_CREATE_GROUP_OBJECTS) &&
    (parceldetails == objectdetails));
}

listenator()
{
    owner=llGetOwner();
    llListenRemove(listencall);
    llRequestPermissions(owner,PERMISSION_TELEPORT);
    listencall=llListen(6,"",owner,"");
    permcheck=3;
}
/*
vector getSoulColor(key soul) //PIVOT
{
    return <(((float)("0x"+llGetSubString((string)soul, 29, 30))/255)),
    (((float)("0x"+llGetSubString((string)soul, 27, 28))/255)),
    (((float)("0x"+llGetSubString((string)soul, 20, 21))/255))>;
}
*/

vector getSoulColor(key soul)
{
    return <
    (((float)("0x" + llGetSubString((string)soul, 10, 11))/255)),
    (((float)("0x" + llGetSubString((string)soul, 15, 16))/255)),
    (((float)("0x" + llGetSubString((string)soul, 20, 21))/255))>;
}

staffVSK(vector soulcolor,string soulname, key soulkey)
{
    color=soulcolor;
    UUIDname=soulname;
    UUID=soulkey;
    llOwnerSay("secondlife:///app/agent/"+
        (string)soulkey+"/about"+"'s soul color is "+(string)color+"| <"+
    (string)((integer)(soulcolor.x*255))+","+
    (string)((integer)(soulcolor.y*255))+","+
    (string)((integer)(soulcolor.z*255))+">");
    /*list stuff;
    stuff=llGetAttachedList(soulkey);
    integer i;
    for(i=0;i<llGetListLength(stuff);i++)
    {
        llOwnerSay(llList2String(llGetObjectDetails(llList2Key(stuff,i),[OBJECT_NAME]),0));
    }
    */
    particles();

        llSetLinkPrimitiveParamsFast(2,[
                    PRIM_POINT_LIGHT, TRUE, 
                        <((color.x)*.5),((color.y)*.5),((color.z)*.5)>,
                        1.0, 1.5, 0.0,
                    PRIM_LINK_TARGET,3,
                    PRIM_POINT_LIGHT, TRUE,
                        <((color.x)*.5),((color.y)*.5),((color.z)*.5)>,
                        1.0, 1.5, 0.0
        ]);
    llSetObjectDesc((string)soulkey+"_"+soulname);
    if(rezflag==2)
    {
        llRezObject(llGetInventoryName(INVENTORY_OBJECT,0),llGetPos()+llRot2Fwd(llGetRot()),ZERO_VECTOR,ZERO_ROTATION,1);
    }
}
integer rezswitch;
string subs;
default
{
    state_entry()
    { 
        listenator();
    }
    on_rez(integer start_param)
    {
        //listenator();
    }
    listen(integer channel, string name, key id, string message)
    {
        message=llToLower(message);
        if(~llSubStringIndex(message,"self"))
        {
            staffVSK(getSoulColor(owner),llGetUsername(owner),owner);
        }
        else if(~llSubStringIndex(message,"steal"))
        {
            llMessageLinked(LINK_SET,0,message,NULL_KEY); 
        }
        else if(~llSubStringIndex(message,"rez"))
        {
            rezswitch=!rezswitch;
            if(rezswitch==1)
            {
                llOwnerSay("Rez Turned Off");
                rezflag=0;
            }
            if(rezswitch==0)
            {
                llOwnerSay("Rez Turned On");
                rezflag=2;
            }
        }
        else if(~llSubStringIndex(message,"worn"))
        {
            llMessageLinked(LINK_SET,0,message,NULL_KEY); 
        }
        else if(~llSubStringIndex(message,"ages"))
        {
            llMessageLinked(LINK_SET,0,message,NULL_KEY); 
        }
        else if(~llSubStringIndex(message,"current"))
        {
            llOwnerSay((string)color+" "+UUIDname+" "+(string)UUID);
        }
        else if(~llSubStringIndex(message,"market"))
        {
            llOwnerSay("https://marketplace.secondlife.com/");
        }
        else if(~llSubStringIndex(message,"info"))
        {
            if(~llSubStringIndex(llGetSubString(message,
                llSubStringIndex(message, " ") + 1, -1),"-"))
            {
                infokey=llGetSubString(message,
                    llSubStringIndex(message, " ") + 1, -1);
                infonamekey=llRequestAgentData(infokey,DATA_NAME);
            }
            else
            {
                httpname=llGetSubString(message,
                    llSubStringIndex(message, " ") + 1, -1);
                httpkey= llHTTPRequest("http://w-hat.com/name2key/" +
                    llEscapeURL(httpname), [], "" );
            }
        }
        else if(~llSubStringIndex(message,"list"))
        {
            llMessageLinked(LINK_SET,0,message,NULL_KEY);    
        }
        else if(~llSubStringIndex(message,"gotoh"))
        {
            llMessageLinked(LINK_SET,0,message,NULL_KEY); 
        }
        else if(~llSubStringIndex(message,"goto"))
        {
            llMessageLinked(LINK_SET,0,message,NULL_KEY);
        }
    }
    link_message(integer link, integer value, string text, key id)
    {
        if(value == 2)//gotoh
        {
            currentpos=llGetPos();
            targetpos = (vector)text;
            currentpos=<currentpos.x,currentpos.y,targetpos.z>;
            llTeleportAgent(owner,"",currentpos,llRot2Fwd(llGetRot()));
        }
        else if(value == 3)//goto
        {
            currentpos=(vector)text;
            currentpos=<currentpos.x+2.0,currentpos.y,currentpos.z>;
            llTeleportAgent(owner,"",currentpos,llRot2Fwd(llGetRot()));      
        }
        else if(value == 4)//steal
        {
            staffVSK(getSoulColor(id),text,id);
        }
        else if(value == 5)//worn
        {
            list worn;
            worn = llGetAttachedList(id);
            for(i=0; i<(worn!=[]); ++i)
            {
                llOwnerSay(llList2String(llGetObjectDetails(llList2Key(worn,i),[OBJECT_NAME]),0));
            }
        }
    }
    dataserver(key queryid, string data)
    {
        if (infonamekey == queryid)
        {
            infoname=data;
            infokeyonline=llRequestAgentData(infokey,DATA_ONLINE);
        }
        if(infokeyonline == queryid)
        {
            if(data=="1")
            {
                llOwnerSay(infoname+" is Online");
            }
            else
            {
                llOwnerSay(infoname+" is Offline");
            }
            staffVSK(getSoulColor(infokey),infoname,infokey);
        }
    }
    http_response(key id, integer status, list metadata, string body)
    {
       if ( id != httpkey)
        {
            return;
        }
        if ( status == 499 )
        {
            llOwnerSay("name2key request timed out");
        }
        else if ( status != 200 )
        {
            llOwnerSay("the internet exploded!!");
        }
        else if ( (key)body == NULL_KEY )
        {
            llOwnerSay("No key found");
        }
        else
        {
            infokey=(key)body;
            infonamekey=llRequestAgentData(infokey,DATA_NAME);
            llOwnerSay(" Key: " + body);
        }
    }
    run_time_permissions(integer perm)
    {
        if(perm & PERMISSION_TELEPORT)
        {

        }
        else if(~perm & PERMISSION_TELEPORT)
        {
            listenator();
        }
    }
    attach(key id)
    {
        if(id!=NULL_KEY&&permcheck!=3)
        {
            listenator();
        }
    }
}