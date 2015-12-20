LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

iperf_SRC += compat/error.c
iperf_SRC += compat/snprintf.c
iperf_SRC += compat/inet_ntop.c
iperf_SRC += compat/inet_pton.c
iperf_SRC += compat/signal.c
iperf_SRC += compat/Thread.c
iperf_SRC += compat/string.c
iperf_SRC += compat/gettimeofday.c
iperf_SRC += src/gnu_getopt.c
iperf_SRC += src/gnu_getopt_long.c
iperf_SRC += src/tcp_window_size.c
iperf_SRC += src/service.c
iperf_SRC += src/sockets.c
iperf_SRC += src/stdio.c
iperf_SRC += src/ReportCSV.c
iperf_SRC += src/Locale.c
iperf_SRC += src/ReportDefault.c
iperf_SRC += src/Reporter.c
iperf_SRC += src/Extractor.c
iperf_SRC += src/SocketAddr.c
iperf_SRC += compat/delay.cpp
iperf_SRC += src/Server.cpp
iperf_SRC += src/Client.cpp
iperf_SRC += src/List.cpp
iperf_SRC += src/Launch.cpp
iperf_SRC += src/PerfSocket.cpp
iperf_SRC += src/Settings.cpp
iperf_SRC += src/Listener.cpp
iperf_SRC += src/main.cpp

LOCAL_CFLAGS := -O2 -g
LOCAL_CFLAGS += -DHAVE_CONFIG_H -D_U_="__attribute__((unused))"

LOCAL_SRC_FILES := $(iperf_SRC)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

LOCAL_MODULE_TAGS := debug

LOCAL_MODULE := iperf

include $(BUILD_EXECUTABLE)

