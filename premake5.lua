workspace "LearnCppWithPython"
	architecture "x64"
	configurations { "Debug", "Release" }
	location "project-files"
	startproject "EmbededPython3"
	
	outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

	filter "configurations:Debug"
		runtime "Release"
		symbols "On"
		
	filter "configurations:Release"
		runtime "Release"
		optimize "On"
		symbols "Off"


include "EmbededPython3"
