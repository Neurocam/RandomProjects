integer LH;
list balancedternaryascii=[
"++--",   " "  , "++-0",    "!", "++-+",   "\"" , "++0-",    "#",
"++00",   "$"  , "++0+",    "%", "+++-",   "&"  , "+++0",    "'",
"++++",   "("  , "+----",   ")", "+---0",  "*"  , "+---+",   "+",
"+--0-",  ","  , "+--00",   "-", "+--0+",  "."  , "+--+-",   "/",
"+--+0",  "0"  , "+--++",   "1", "+-0--",  "2"  , "+-0-0",   "3",
"+-0-+",  "4"  , "+-00-",   "5", "+-000",  "6"  , "+-00+",   "7",
"+-0+-",  "8"  , "+-0+0",   "9", "+-0++",  ":"  , "+-+--",   ";",
"+-+-0",  "<"  , "+-+-+",   "=", "+-+0-",  ">"  , "+-+00",   "?",
"+-+0+",  "@"  , "+-++-",   "A", "+-++0",  "B"  , "+-+++",   "C",
"+0---",  "D"  , "+0--0",   "E", "+0--+",  "F"  , "+0-0-",   "G",
"+0-00",  "H"  , "+0-0+",   "I", "+0-+-",  "J"  , "+0-+0",   "K",
"+0-++",  "L"  , "+00--",   "M", "+00-0",  "N"  , "+00-+",   "O",
"+000-",  "P"  , "+0000",   "Q", "+000+",  "R"  , "+00+-",   "S",
"+00+0",  "T"  , "+00++",   "U", "+0+--",  "V"  , "+0+-0",   "W",
"+0+-+",  "X"  , "+0+0-",   "Y", "+0+00",  "Z"  , "+0+0+",   "[",
"+0++-",  "\\" , "+0++0",   "]", "+0+++",  "^"  , "++---",   "_",
"++--0",  "`"  , "++--+",   "a", "++-0-",  "b"  , "++-00",   "c",
"++-0+",  "d"  , "++-+-",   "e", "++-+0",  "f"  , "++-++",   "g",
"++0--",  "h"  , "++0-0",   "i", "++0-+",  "j"  , "++00-",   "k",
"++000",  "l"  , "++00+",   "m", "++0+-",  "n"  , "++0+0",   "o",
"++0++",  "p"  , "+++--",   "q", "+++-0",  "r"  , "+++-+",   "s",
"+++0-",  "t"  , "+++00",   "u", "+++0+",  "v"  , "++++-",   "w",
"++++0",  "x"  , "+++++",   "y", "+-----", "z"  , "+----0",  "{",
"+----+", "|"  , "+---0-",  "}", "+---00", "~"];
list temp;
integer i;
list commands;
string tempt;
key owner;

string rev;
string trev;
integer j;
integer revtempint;
default
{
    state_entry()
    {
        owner=llGetOwner();
        llListenRemove(LH);
        LH=llListen(3,"",NULL_KEY,"");
    }
    listen(integer channel, string name, key id, string message)
    {
        commands=llParseString2List(message,["_"],[]);
        j=1;
        
        if(llList2String(commands,0)=="c"&&id==owner)
        {
            temp=[];
            for(i=0;i<llStringLength(llList2String(commands,1));i++)
            {
                temp+=llList2String(balancedternaryascii,llListFindList(balancedternaryascii,[llGetSubString(llList2String(commands,1),i,i)])-1);
            }
            llSay(0,llDumpList2String(temp," "));
            llSay(3,"3_"+llDumpList2String(temp," "));
        }
        else if(llList2String(commands,0)=="3")
        {
            temp=[];
            tempt="";
            temp=llParseString2List(llList2String(commands,1),[" "],[]);
            for(i=0;i<llGetListLength(temp);i++)
            {
                tempt+=llList2String(balancedternaryascii,llListFindList(balancedternaryascii,[llList2String(temp,i)])+1);
            }
            llOwnerSay(tempt);      
        }
        else if(llList2String(commands,0)=="n")
        {
            rev="";
            for(i=llStringLength(llList2String(commands,1))-1;i>-1;--i)
            {
                rev+=llGetSubString(llList2String(commands,1),i,i);
                //llOwnerSay((string)i);
                //llOwnerSay(llGetSubString(llList2String(commands,1),i,i));
            }
            for(i=0;i<llStringLength(rev);++i)
            {
                revtempint=0;
                //rev+=llGetSubString(llList2String(commands,1),i,i);
                //llOwnerSay(llGetSubString(rev,i,i));
                //llOwnerSay((string)i);
                j*=3;
                if(llGetSubString(rev,i,i)=="0")
                {
                    revtempint+=0*j;   
                }
                if(llGetSubString(rev,i,i)=="+")
                {
                    revtempint+=1*j;   
                }
                if(llGetSubString(rev,i,i)=="-")
                {
                    revtempint+=-1*j;   
                }
            }
            llOwnerSay((string)revtempint);
        }
    }
}
