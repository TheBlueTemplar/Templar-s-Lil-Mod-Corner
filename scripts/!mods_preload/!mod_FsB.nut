/////////////////////////////////////////////////////////////////////
// 					  Author: The Blue Templar 					   //
/////////////////////////////////////////////////////////////////////

// Credits: Heisenbee lol, nice idea

::FsB <- {
	ID = "mod_FsB",
	Name = "Fanta-Sea Bros", //PoV
	Version = "1.0.0"
};

::FsB.HooksMod <- ::Hooks.register(::FsB.ID, ::FsB.Version, ::FsB.Name);
::FsB.HooksMod.require("mod_legends >= 19.2.32", "mod_modern_hooks >= 0.4.0", "mod_msu >= 1.2.7");

::FsB.HooksMod.queue(">mod_legends", ">mod_msu", function() 
{
	// Register with MSU so people know to update (Public Branch)
	::FsB.Mod <- ::MSU.Class.Mod(::FsB.ID, ::FsB.Version, ::FsB.Name);
	::FsB.Mod.Registry.addModSource(::MSU.System.Registry.ModSourceDomain.GitHub, "https://github.com/TheBlueTemplar/Templar-s-Lil-Mod-Corner");
	::FsB.Mod.Registry.setUpdateSource(::MSU.System.Registry.ModSourceDomain.GitHub);

	// load mod files
	::includeFiles(::IO.enumerateFiles("mod_FsB/hooks"));

    // load mod settings 
    //::include("mod_PoV/settingsLoad.nut");
});




