project "EmbededPython3"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++14"
	staticruntime "On"
	
	
	targetdir ("../bin/" .. outputdir .. "/%{prj.name}")
	objdir ("../bin-int/" .. outputdir .. "/%{prj.name}")

	files { 
		"src/**.h",
		"src/**.cpp",
		"premake5.lua",
		"../premake5.lua"
	}
	
	pythondir = "D:/develop/anaconda3/envs/whisper"

	includedirs { 
		"src",
		"%{pythondir}/include"
	}

	libdirs { 
		"%{pythondir}/libs"
	}

	links {
		--"_tkinter.lib",
		--"python3.lib",
		"python39.lib",
	}

	postbuildcommands
	{
		("{COPY} %{pythondir}/python39.dll %{cfg.targetdir}"),
		--("{COPY} %{pythondir}/python3.dll %{cfg.targetdir}"),
		--("{COPY} %{pythondir}/python39.pdb %{cfg.targetdir}"),
	}
	
	filter "system:windows"
		systemversion "latest"
	