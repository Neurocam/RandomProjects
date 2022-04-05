list simkeysraw;
list simnamekeysmerged;
string targetname;
integer i;
integer alen;
key querykey;
string date;
integer counter;
default
{
    link_message(integer link, integer value, string text, key id)
    {
        if(~llSubStringIndex(text,"list"))
        {
            simkeysraw=llGetAgentList(AGENT_LIST_REGION,[]);
            simnamekeysmerged=[];
            for (i=0; i <(simkeysraw!=[]); ++i)
            {
                simnamekeysmerged +=[llGetUsername(llList2Key(simkeysraw,i))];
                simnamekeysmerged +=[llList2Key(simkeysraw,i)];
                simnamekeysmerged +=[llList2String(llGetObjectDetails(
                    llList2Key(simkeysraw,i),[OBJECT_POS]),0)];
            }
            simkeysraw=[];
            simnamekeysmerged=llListSort(simnamekeysmerged,3,FALSE);
            for (i=0; i <(simnamekeysmerged!=[]); ++i)
            {
                llOwnerSay(llList2String(simnamekeysmerged,i)); 
            }  
        }
        else if(~llSubStringIndex(text,"gotoh"))
        {
            targetname=llToLower(llGetSubString(text,
                llSubStringIndex(text, " ") + 1, -1));
                
            simkeysraw=llGetAgentList(AGENT_LIST_REGION,[]);
            simnamekeysmerged=[];
            for (i=0; i <(simkeysraw!=[]); ++i)
            {
                simnamekeysmerged +=[llGetUsername(llList2Key(simkeysraw,i))];
                simnamekeysmerged +=[llList2Key(simkeysraw,i)];
            }
            simkeysraw=[];
            simnamekeysmerged=llListSort(simnamekeysmerged,2,FALSE);
            //llOwnerSay(llDumpList2String(simnamekeyssorted,"\n"));        
            for(i=0;i <(simnamekeysmerged!=[]);++i)
            {
                if (~llSubStringIndex(llToLower(llList2String(
                    simnamekeysmerged,i)), targetname))
                {
                    llMessageLinked(LINK_SET,2,
                    (string)llList2Vector(llGetObjectDetails(
                        llList2Key(simnamekeysmerged,i+1),[OBJECT_POS]),0),
                        NULL_KEY);
                }
            }
        }
        else if(~llSubStringIndex(text,"goto"))
        {
            targetname=llToLower(llGetSubString(text,
                llSubStringIndex(text, " ") + 1, -1));
        
            simkeysraw=llGetAgentList(AGENT_LIST_REGION,[]);
            simnamekeysmerged=[];
            for (i=0; i <(simkeysraw!=[]); ++i)
            {
                simnamekeysmerged +=[llGetUsername(llList2Key(simkeysraw,i))];
                simnamekeysmerged +=[llList2Key(simkeysraw,i)];
            }
            simkeysraw=[];
            simnamekeysmerged=llListSort(simnamekeysmerged,2,FALSE);
            //llOwnerSay(llDumpList2String(simnamekeyssorted,"\n"));        
            for(i=0;i <(simnamekeysmerged!=[]);++i)
            {
                if (~llSubStringIndex(llToLower(
                    llList2String(simnamekeysmerged,i)), targetname))
                {
                    llMessageLinked(LINK_SET,3,
                    (string)llList2Vector(llGetObjectDetails(
                        llList2Key(simnamekeysmerged,i+1),[OBJECT_POS]),0),
                        NULL_KEY);
                }
            }     
        }
        else if(~llSubStringIndex(text,"worn"))
        {
            targetname=llToLower(llGetSubString(text, 
                llSubStringIndex(text, " ") + 1, -1));
        
            simkeysraw=llGetAgentList(AGENT_LIST_REGION,[]);
            simnamekeysmerged=[];
            for (i=0; i <(simkeysraw!=[]); ++i)
            {
                simnamekeysmerged +=[llGetUsername(llList2Key(simkeysraw,i))];
                simnamekeysmerged +=[llList2Key(simkeysraw,i)];
            }
            simkeysraw=[];
            simnamekeysmerged=llListSort(simnamekeysmerged,2,FALSE);
            //llOwnerSay(llDumpList2String(simnamekeyssorted,"\n"));        
            for(i=0;i <(simnamekeysmerged!=[]);++i)
            {
                if (~llSubStringIndex(llToLower(
                    llList2String(simnamekeysmerged,i)), targetname))
                {
                    llMessageLinked(LINK_SET,5,
                        "",
                        llList2Key(simnamekeysmerged,i+1));
                }
            }
        }
        else if(~llSubStringIndex(text,"steal"))
        {
            targetname=llToLower(llGetSubString(text, 
                llSubStringIndex(text, " ") + 1, -1));
        
            simkeysraw=llGetAgentList(AGENT_LIST_REGION,[]);
            simnamekeysmerged=[];
            for (i=0; i <(simkeysraw!=[]); ++i)
            {
                simnamekeysmerged +=[llGetUsername(llList2Key(simkeysraw,i))];
                simnamekeysmerged +=[llList2Key(simkeysraw,i)];
            }
            simkeysraw=[];
            simnamekeysmerged=llListSort(simnamekeysmerged,2,FALSE);
            //llOwnerSay(llDumpList2String(simnamekeyssorted,"\n"));        
            for(i=0;i <(simnamekeysmerged!=[]);++i)
            {
                if (~llSubStringIndex(llToLower(
                    llList2String(simnamekeysmerged,i)), targetname))
                {
                    llMessageLinked(LINK_SET,4,
                        llList2String(simnamekeysmerged,i),
                        llList2Key(simnamekeysmerged,i+1));
                }
            }
        }
        if(~llSubStringIndex(text,"ages"))
        {
            counter=0;
            simkeysraw=llGetAgentList(AGENT_LIST_REGION,[]);
            alen=llGetListLength(simkeysraw);
            if(alen>0)
            {
                querykey=llRequestAgentData(llList2Key(simkeysraw,counter),DATA_BORN);
            }
        }
    }
    dataserver(key queryid, string data)
    {
        if (querykey == queryid )
        {
            date=data;
            llOwnerSay(llGetUsername(llList2Key(simkeysraw,counter))+" was born on "+date);
            counter++;
            if(alen>counter)
            {
                querykey=llRequestAgentData(llList2Key(simkeysraw,counter),DATA_BORN);
            }
            else
            {
                simkeysraw=[];   
            }
        }
    }
}
