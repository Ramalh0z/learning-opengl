project "glad"
	kind "StaticLib"
	language "C"
    staticruntime "off"

	targetdir ("%{wks.location}" .. outputdir .. "%{prj.name}")
	objdir ("%{wks.location}" .. outputdir .. "%{prj.name}/objs/")

	files
	{
        "include/**.h",
        "**.c"
	}

	includedirs
    {
        "include"
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "Full"
	
	filter "configurations:Profile"
		runtime "Release"
		optimize "On"
        symbols "On"
		optimize "on"

    filter "configurations:Release"
		runtime "Release"
		symbols "off"
		optimize "Full"
        flags { "MultiProcessorCompile" }
