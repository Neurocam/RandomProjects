integer arangchan = -36187166;
integer chan;
key arangid = "24bba6f0-233c-84de-8a22-1573cfec0f4f";
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
