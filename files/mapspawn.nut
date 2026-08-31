function fixlines()
{
    local existing = Entities.FindByName(null, "@glados")
    if (!existing)
    {    
        local ent = Entities.CreateByClassname("generic_actor")
        ent.__KeyValueFromString("targetname", "@glados")
        ent.SetOrigin(Vector(16000, 16000, 16000))
    }
}

// game literally crashes without waiting a second lol
EntFire("worldspawn", "CallScriptFunction", "fixlines", 1.0)