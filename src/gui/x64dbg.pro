#-------------------------------------------------
#
# Project created by QtCreator 2013-05-20T13:22:23
#
#-------------------------------------------------

##
## Pre-defined global variables
##

!contains(QMAKE_HOST.arch, x86_64) {
    X64_BIN_DIR = ../../bin/x32      # Relative BIN path, 32-bit
    X64_GEN_DIR = ../gui_build/out32 # QMake temporary generated files, placed inside the build folder. (OBJ, UI, MOC)
    TARGET = x32gui                  # Build x32gui
} else {
    X64_BIN_DIR = ../../bin/x64      # Relative BIN path, 64-bit
    X64_GEN_DIR = ../gui_build/out64 # QMake temporary generated files, placed inside the build folder. (OBJ, UI, MOC)
    TARGET = x64gui                  # Build x64gui
}

##
## QMake output directories
##
DESTDIR = $${X64_BIN_DIR}
OBJECTS_DIR = $${X64_GEN_DIR}
MOC_DIR = $${X64_GEN_DIR}
RCC_DIR = $${X64_GEN_DIR}
UI_DIR = $${X64_GEN_DIR}

##
## QT libraries
##
# TODO: Remove networking because no one wants a firewall notice for a debugger
QT += core gui network

# QT5 requires widgets
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

##
## Build flags
##
# Generate debug symbols in release mode
QMAKE_CXXFLAGS_RELEASE += -Zi #-O3      # Compiler
QMAKE_LFLAGS_RELEASE += /DEBUG          # Linker

# Build as a library
DEFINES += BUILD_LIB NOMINMAX
TEMPLATE = lib

##
## Includes
##
INCLUDEPATH += \
    ../ \
    Src \
    Src/Gui \
    Src/BasicView \
    Src/Disassembler \
    Src/ThirdPartyLibs/capstone \
    Src/ThirdPartyLibs/snowman \
    Src/Memory \
    Src/Bridge \
    Src/Global \
    Src/Utils \
    ../capstone_wrapper

# Resources, sources, headers, and forms
RESOURCES += \
    resource.qrc

SOURCES += \
    Src/main.cpp \
    Src/Gui/MainWindow.cpp \
    Src/Gui/CPUWidget.cpp \
    Src/Gui/CommandLineEdit.cpp \
    Src/BasicView/Disassembly.cpp \
    Src/BasicView/HexDump.cpp \
    Src/BasicView/AbstractTableView.cpp \
    Src/Disassembler/QBeaEngine.cpp \
    Src/Disassembler/capstone_gui.cpp \
    Src/Memory/MemoryPage.cpp \
    Src/Bridge/Bridge.cpp \
    Src/BasicView/StdTable.cpp \
    Src/Gui/MemoryMapView.cpp \
    Src/Gui/LogView.cpp \
    Src/Gui/GotoDialog.cpp \
    Src/Gui/StatusLabel.cpp \
    Src/Gui/WordEditDialog.cpp \
    Src/Gui/CPUDisassembly.cpp \
    Src/Gui/LineEditDialog.cpp \
    Src/Gui/BreakpointsView.cpp \
    Src/Utils/Breakpoints.cpp \
    Src/Gui/CPUInfoBox.cpp \
    Src/Gui/CPUDump.cpp \
    Src/Gui/ScriptView.cpp \
    Src/Gui/CPUStack.cpp \
    Src/Gui/SymbolView.cpp \
    Src/Gui/RegistersView.cpp \
    Src/BasicView/SearchListView.cpp \
    Src/BasicView/ReferenceView.cpp \
    Src/Gui/ThreadView.cpp \
    Src/Gui/SettingsDialog.cpp \
    Src/Gui/ExceptionRangeDialog.cpp \
    Src/Utils/RichTextPainter.cpp \
    Src/Gui/TabBar.cpp \
    Src/Gui/TabWidget.cpp \
    Src/Gui/CommandHelpView.cpp \
    Src/BasicView/HistoryLineEdit.cpp \
    Src/Utils/Configuration.cpp \
    Src/Gui/CPUSideBar.cpp \
    Src/Gui/AppearanceDialog.cpp \
    Src/Gui/CloseDialog.cpp \
    Src/Gui/HexEditDialog.cpp \
    Src/QHexEdit/ArrayCommand.cpp \
    Src/QHexEdit/QHexEdit.cpp \
    Src/QHexEdit/QHexEditPrivate.cpp \
    Src/QHexEdit/XByteArray.cpp \
    Src/Gui/PatchDialog.cpp \
    Src/Gui/PatchDialogGroupSelector.cpp \
    Src/Utils/UpdateChecker.cpp \
    Src/BasicView/SearchListViewTable.cpp \
    Src/Gui/CallStackView.cpp \
    Src/Gui/ShortcutsDialog.cpp \
    Src/BasicView/ShortcutEdit.cpp \
    Src/Gui/CalculatorDialog.cpp \
    Src/Gui/AttachDialog.cpp \
    Src/Gui/PageMemoryRights.cpp \
    Src/Gui/SelectFields.cpp \
    Src/Gui/ReferenceManager.cpp \
    Src/Bridge/BridgeResult.cpp \
    Src/Gui/YaraRuleSelectionDialog.cpp \
    Src/Gui/DataCopyDialog.cpp \
    Src/Gui/SourceViewerManager.cpp \
    Src/Gui/SourceView.cpp \
    Src/Utils/ValidateExpressionThread.cpp \
    Src/Utils/MainWindowCloseThread.cpp \
    Src/Gui/TimeWastedCounter.cpp \
    Src/Utils/FlickerThread.cpp \
    Src/QEntropyView/QEntropyView.cpp \
    Src/Gui/EntropyDialog.cpp \
    Src/Gui/NotesManager.cpp \
    Src/Gui/NotepadView.cpp


HEADERS += \
    Src/main.h \
    Src/Gui/MainWindow.h \
    Src/Gui/CPUWidget.h \
    Src/Gui/CommandLineEdit.h \
    Src/BasicView/Disassembly.h \
    Src/BasicView/HexDump.h \
    Src/BasicView/AbstractTableView.h \
    Src/Disassembler/QBeaEngine.h \
    Src/Disassembler/capstone_gui.h \
    Src/Memory/MemoryPage.h \
    Src/Bridge/Bridge.h \
    Src/Exports.h \
    Src/Imports.h \
    Src/BasicView/StdTable.h \
    Src/Gui/MemoryMapView.h \
    Src/Gui/LogView.h \
    Src/Gui/GotoDialog.h \
    Src/Gui/RegistersView.h \
    Src/Gui/StatusLabel.h \
    Src/Gui/WordEditDialog.h \
    Src/Gui/CPUDisassembly.h \
    Src/Gui/LineEditDialog.h \
    Src/Gui/BreakpointsView.h \
    Src/Utils/Breakpoints.h \
    Src/Gui/CPUInfoBox.h \
    Src/Gui/CPUDump.h \
    Src/Gui/ScriptView.h \
    Src/Gui/CPUStack.h \
    Src/Gui/SymbolView.h \
    Src/BasicView/SearchListView.h \
    Src/BasicView/ReferenceView.h \
    Src/Gui/ThreadView.h \
    Src/Gui/SettingsDialog.h \
    Src/Gui/ExceptionRangeDialog.h \
    Src/Utils/RichTextPainter.h \
    Src/Gui/TabBar.h \
    Src/Gui/TabWidget.h \
    Src/Gui/CommandHelpView.h \
    Src/BasicView/HistoryLineEdit.h \
    Src/Utils/Configuration.h \
    Src/Gui/CPUSideBar.h \
    Src/Gui/AppearanceDialog.h \
    Src/Gui/CloseDialog.h \
    Src/Gui/HexEditDialog.h \
    Src/QHexEdit/ArrayCommand.h \
    Src/QHexEdit/QHexEdit.h \
    Src/QHexEdit/QHexEditPrivate.h \
    Src/QHexEdit/XByteArray.h \
    Src/Gui/PatchDialog.h \
    Src/Gui/PatchDialogGroupSelector.h \
    Src/Utils/UpdateChecker.h \
    Src/BasicView/SearchListViewTable.h \
    Src/Gui/CallStackView.h \
    Src/Gui/ShortcutsDialog.h \
    Src/BasicView/ShortcutEdit.h \
    Src/Gui/CalculatorDialog.h \
    Src/Gui/AttachDialog.h \
    Src/Gui/PageMemoryRights.h \
    Src/Gui/SelectFields.h \
    Src/Gui/ReferenceManager.h \
    Src/Bridge/BridgeResult.h \
    Src/Gui/YaraRuleSelectionDialog.h \
    Src/Gui/DataCopyDialog.h \
    Src/Gui/SourceViewerManager.h \
    Src/Gui/SourceView.h \
    Src/Utils/StringUtil.h \
    Src/Utils/ValidateExpressionThread.h \
    Src/Utils/MainWindowCloseThread.h \
    Src/Gui/TimeWastedCounter.h \
    Src/Utils/FlickerThread.h \
    Src/QEntropyView/Entropy.h \
    Src/QEntropyView/QEntropyView.h \
    Src/Gui/EntropyDialog.h \
    Src/Gui/NotesManager.h \
    Src/Gui/NotepadView.h \
    Src/Utils/MenuBuilder.h

FORMS += \
    Src/Gui/MainWindow.ui \
    Src/Gui/CPUWidget.ui \
    Src/Gui/GotoDialog.ui \
    Src/Gui/WordEditDialog.ui \
    Src/Gui/LineEditDialog.ui \
    Src/Gui/SymbolView.ui \
    Src/BasicView/SearchListView.ui \
    Src/Gui/SettingsDialog.ui \
    Src/Gui/ExceptionRangeDialog.ui \
    Src/Gui/CommandHelpView.ui \
    Src/Gui/AppearanceDialog.ui \
    Src/Gui/CloseDialog.ui \
    Src/Gui/HexEditDialog.ui \
    Src/Gui/PatchDialog.ui \
    Src/Gui/PatchDialogGroupSelector.ui \
    Src/Gui/ShortcutsDialog.ui \
    Src/Gui/CalculatorDialog.ui \
    Src/Gui/AttachDialog.ui \
    Src/Gui/PageMemoryRights.ui \
    Src/Gui/SelectFields.ui \
    Src/Gui/YaraRuleSelectionDialog.ui \
    Src/Gui/DataCopyDialog.ui \
    Src/Gui/EntropyDialog.ui

##
## Libraries
##
LIBS += -luser32

!contains(QMAKE_HOST.arch, x86_64) {
    # Windows x86 (32bit) specific build
    LIBS += -L"$$PWD/../dbg/capstone/" -lcapstone_x86
    LIBS += -L"$$PWD/Src/ThirdPartyLibs/snowman/" -lsnowman_x86
    LIBS += -L"$${X64_BIN_DIR}/" -lx32bridge -lcapstone_wrapper
} else {
    # Windows x64 (64bit) specific build
    LIBS += -L"$$PWD/../dbg/capstone/" -lcapstone_x64
    LIBS += -L"$$PWD/Src/ThirdPartyLibs/snowman/" -lsnowman_x64
    LIBS += -L"$${X64_BIN_DIR}/" -lx64bridge -lcapstone_wrapper
}
