cmake_minimum_required(VERSION 3.16)

project(slot_qt VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick Multimedia REQUIRED)

qt_add_executable(appslot_qt
    main.cpp
)

qt_add_qml_module(appslot_qt
    URI com.company.slot_machine
    VERSION 1.0
    QML_FILES
    main.qml
     InfoPage.qml
     doublepage.qml
     Blue_blackborder.qml

    RESOURCES
    images/playy.png
    images/stopp.png
    images/7.jpg
    images/cherry.png
    images/grapes.png
    images/lemons.png
    images/melon.png
    images/num7.png
    images/orange.png
    images/prune.png
    images/starr.png
    images/info.png
    images/doubleup.png
    images/collect.png
    images/blackcard.png
    images/redcard.png
    images/blackreverse.png
    images/redreverse.png
    images/greyy.png

    images/losecards.wav
    images/wincards.wav
    images/spin4.m4a
    images/win1.wav

    SOURCES slot_machine.h slot_machine.cpp


)
# --- ADD/MODIFY THESE THREE LINES ---
    # To run on your Android 12 device
# ------------------------------------
#set(ANDROID_STL c++_shared)
# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appslot_qt PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appslot_qt
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appslot_qt
    PRIVATE Qt6::Quick Qt6::Multimedia)

include(GNUInstallDirs)
install(TARGETS appslot_qt
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
