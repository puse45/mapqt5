cmake_minimum_required(VERSION 3.10)
project(mapqt5)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/../Debug)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../Debug)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_CXX_STANDARD 11)
set (CMAKE_PREFIX_PATH "/home/pinje/Qt/5.11.1/gcc_64/lib/cmake")
find_package(Qt5 COMPONENTS Core Gui Widgets WebEngine WebEngineWidgets WebChannel WebSockets REQUIRED)
qt5_add_resources(UI_RESOURCES resources.qrc)
SET(Map_SRC
        # map
        map.cpp
        #hasher
        )
add_executable(${PROJECT_NAME} main.cpp ${Map_SRC} ${UI_RESOURCES})
target_link_libraries(${PROJECT_NAME} Qt5::Core Qt5::Gui Qt5::Widgets Qt5::WebEngine Qt5::WebEngineWidgets Qt5::WebChannel Qt5::WebSockets)