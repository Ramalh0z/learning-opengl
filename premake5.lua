workspace "LearningOpengl"
    configurations { "Debug", "Profile", "Release" }
    platforms { "Win64" }
    startproject "App"

    outputdir = "/build/%{cfg.buildcfg}/"

include "third_party/glad"
include "third_party/glfw"
include "engine"