global struct ModInfo
{
    string name = ""
    string description = ""
    string version = ""
    string downloadLink = ""
    int loadPriority = 0
    bool enabled = false
    bool requiredOnClient = false
    bool isRemote
    array<string> conVars = []
}