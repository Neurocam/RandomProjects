string dokkaebicount;
string kumihocount;
string baekgacount;
integer arangagentcount;
integer arangchan = 0;
default
{
    state_entry()
    {
        llSetTimerEvent(60.0);
    }
 
    timer()
    {
        llGetNextEmail("", "");
    }

    touch_start(integer total_number)
    {
        llOwnerSay((string)(llGetKey()) + "@lsl.secondlife.com");
    }

    email( string time, string address, string subject, string message, integer num_left )
    {
        if(llGetSubString(address, -19, -1) == "@lsl.secondlife.com")
        {
            message = llDeleteSubString(message, 0, 
                llSubStringIndex(message, "\n\n") + 1);
        }

        arangagentcount = 
            llGetListLength(llGetAgentList(AGENT_LIST_PARCEL_OWNER,[]));

        if(subject=="Dokkaebi")
        {
            dokkaebicount=message;    
        }
        if(subject=="Kumiho")
        {
            kumihocount=message;    
        }
        if(subject=="Baekga")
        {
            baekgacount=message;    
        }
        llSetText("Dokkaebi:"+dokkaebicount+"\n"+
                  "Arang:"   +(string)arangagentcount+"\n"+
                  "Kumiho:"  +kumihocount+"\n"+
                  "Baekga:"  +baekgacount,
                  <1.0,1.0,1.0>,1.0);
        llRegionSay(arangchan,
                  "Dokkaebi:"+dokkaebicount+"\n"+
                  "Arang:"   +(string)arangagentcount+"\n"+
                  "Kumiho:"  +kumihocount+"\n"+
                  "Baekga:"  +baekgacount);
        if(num_left)
        {
            llGetNextEmail("", "");
        }
    }
}