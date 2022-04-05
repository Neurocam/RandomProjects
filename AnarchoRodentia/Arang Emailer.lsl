string arangemailserver    = "@lsl.secondlife.com";
string dokkaebiemailserver = "@lsl.secondlife.com";
string kumihoemailserver   = "@lsl.secondlife.com";
string baekgaemailserver   = "@lsl.secondlife.com";
integer arangagentcount;
default
{
    state_entry()
    {
        llSetTimerEvent((llGetRegionFPS()/45)+60.0);
    }

    timer()
    {
        arangagentcount = 
            llGetListLength(llGetAgentList(AGENT_LIST_PARCEL_OWNER,[]));
        llEmail(dokkaebiemailserver,"Arang",(string)arangagentcount);
        llEmail(kumihoemailserver,"Arang",(string)arangagentcount);
        llEmail(baekgaemailserver,"Arang",(string)arangagentcount);
    }
}
