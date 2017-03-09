workspace "dial_reference"
    configurations { "Debug", "Release" }
        platforms { "x64", "Win32" }

    filter "configurations:Debug"
        defines { "DEBUG" }

    filter "platforms:Win32"
        includedirs { "win32/inc " }
        libdirs { "win32/libs" }
        links {"Ws2_32", "libcurl", "pthreadVC2"}

    project "client"
    location ".\client"
    kind    "consoleapp"
    language "C++"
    files   { "client/main.cpp", "client/DialServer.cpp", "client/DialDiscovery.cpp", "client/DialConformance.cpp", "client/DialClientInput.cpp"  }
