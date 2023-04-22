project "Engine"
    kind "ConsoleApp"
    language "C++"
    warnings "Everything"

    targetname "engine"
    targetdir ("%{wks.location}/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/" .. outputdir .. "/%{prj.name}/objs/")

    
    files 
    { 
        "**.h",
        "*.hpp",
        "**.cpp"
    }

    includedirs
	{
		"../third_party/glad/include",
        "../third_party/glfw/include",
	}

    links
    {
        "glad",
        "glfw"
    }

	filter "configurations:Debug"
		defines "DEBUG"
		runtime "Debug"
		symbols "Full"
        flags { "MultiProcessorCompile" }

	filter "configurations:Profile"
		defines "PROFILE"
		runtime "Release"
		optimize "On"
        symbols "On"
        flags { "MultiProcessorCompile" }

    filter "configurations:Release"
		defines "RELEASE"
		runtime "Release"
		optimize "Full"
        flags { "MultiProcessorCompile" }
