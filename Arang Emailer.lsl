string arangemailserver    = "24bba6f0-233c-84de-8a22-1573cfec0f4f@lsl.secondlife.com";
string dokkaebiemailserver = "b625ec26-f472-5c13-9b29-ac3c295ccc03@lsl.secondlife.com";
string kumihoemailserver   = "b5b502eb-5389-1c14-58c3-9fe235afb66a@lsl.secondlife.com";
string baekgaemailserver   = "8792a4e7-cf21-dfeb-0b27-23115a2c4731@lsl.secondlife.com";
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
