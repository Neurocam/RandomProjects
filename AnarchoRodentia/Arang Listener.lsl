integer arangchan = 0;
integer chan;
key arangid = "";
default
{
    state_entry()
    {
        chan=llListen(arangchan,"",arangid,"");
    }
    listen(integer channel, string name, key id, string text)
    {
        llSetText(text,<1.0,1.0,1.0>,1.0);
    }
}
