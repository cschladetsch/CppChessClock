#set(Boost_DEBUG 1)

set(BOOST_ROOT "c:/boost/boost_1_84_0")
set(Boost_USE_STATIC_LIBS ON)
set(Boost_USE_MULTITHREADED OFF)
set(Boost_USE_STATIC_RUNTIME ON)

find_package(Boost 1.84.0 COMPONENTS chrono filesystem system)

if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    add_executable(progname file1.cxx file2.cxx)
    target_link_libraries(progname ${Boost_LIBRARIES})
else()
	message("Failed to find boost")
	message("looked in " ${BOOST_ROOT})
endif()
