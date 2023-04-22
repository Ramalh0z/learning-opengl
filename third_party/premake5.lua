project "glfw"
	kind "StaticLib"
	language "C"

    targetdir ("%{wks.location}" .. outputdir .. "%{prj.name}")
	objdir ("%{wks.location}" .. outputdir .. "%{prj.name}/objs/")

	files
	{
        "glfw/include/GLFW/**.h",
        "glfw/src/glfw_config.h",
    	"glfw/src/context.c",
		"glfw/src/init.c",
		"glfw/src/input.c",
		"glfw/src/monitor.c",
		"glfw/src/null_init.c",
		"glfw/src/null_joystick.c",
		"glfw/src/null_monitor.c",
		"glfw/src/null_window.c",
		"glfw/src/platform.c",
		"glfw/src/vulkan.c",
		"glfw/src/window.c",
        "glfw/src/win32_init.c",
        "glfw/src/win32_joystick.c",
        "glfw/src/win32_module.c",
        "glfw/src/win32_monitor.c",
        "glfw/src/win32_time.c",
        "glfw/src/win32_thread.c",
        "glfw/src/win32_window.c",
        "glfw/src/wgl_context.c",
        "glfw/src/egl_context.c",
        "glfw/src/osmesa_context.c"
	}

	includedirs
    {
        "glfw/include"
    }

    defines 
    { 
        "_GLFW_WIN32",
        "_CRT_SECURE_NO_WARNINGS"
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
