# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/mymuduo/mymuduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/mymuduo/mymuduo/build

# Include any dependencies generated for this target.
include CMakeFiles/mymuduo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mymuduo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mymuduo.dir/flags.make

CMakeFiles/mymuduo.dir/Logger.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Logger.o: ../Logger.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/Logger.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Logger.o -c /home/user/mymuduo/mymuduo/Logger.cc

CMakeFiles/mymuduo.dir/Logger.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Logger.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/Logger.cc > CMakeFiles/mymuduo.dir/Logger.i

CMakeFiles/mymuduo.dir/Logger.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Logger.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/Logger.cc -o CMakeFiles/mymuduo.dir/Logger.s

CMakeFiles/mymuduo.dir/Logger.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/Logger.o.requires

CMakeFiles/mymuduo.dir/Logger.o.provides: CMakeFiles/mymuduo.dir/Logger.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/Logger.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/Logger.o.provides

CMakeFiles/mymuduo.dir/Logger.o.provides.build: CMakeFiles/mymuduo.dir/Logger.o

CMakeFiles/mymuduo.dir/Timestamp.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Timestamp.o: ../Timestamp.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/Timestamp.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Timestamp.o -c /home/user/mymuduo/mymuduo/Timestamp.cc

CMakeFiles/mymuduo.dir/Timestamp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Timestamp.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/Timestamp.cc > CMakeFiles/mymuduo.dir/Timestamp.i

CMakeFiles/mymuduo.dir/Timestamp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Timestamp.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/Timestamp.cc -o CMakeFiles/mymuduo.dir/Timestamp.s

CMakeFiles/mymuduo.dir/Timestamp.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/Timestamp.o.requires

CMakeFiles/mymuduo.dir/Timestamp.o.provides: CMakeFiles/mymuduo.dir/Timestamp.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/Timestamp.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/Timestamp.o.provides

CMakeFiles/mymuduo.dir/Timestamp.o.provides.build: CMakeFiles/mymuduo.dir/Timestamp.o

CMakeFiles/mymuduo.dir/InetAddress.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/InetAddress.o: ../InetAddress.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/InetAddress.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/InetAddress.o -c /home/user/mymuduo/mymuduo/InetAddress.cc

CMakeFiles/mymuduo.dir/InetAddress.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/InetAddress.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/InetAddress.cc > CMakeFiles/mymuduo.dir/InetAddress.i

CMakeFiles/mymuduo.dir/InetAddress.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/InetAddress.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/InetAddress.cc -o CMakeFiles/mymuduo.dir/InetAddress.s

CMakeFiles/mymuduo.dir/InetAddress.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/InetAddress.o.requires

CMakeFiles/mymuduo.dir/InetAddress.o.provides: CMakeFiles/mymuduo.dir/InetAddress.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/InetAddress.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/InetAddress.o.provides

CMakeFiles/mymuduo.dir/InetAddress.o.provides.build: CMakeFiles/mymuduo.dir/InetAddress.o

CMakeFiles/mymuduo.dir/TcpServer.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/TcpServer.o: ../TcpServer.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/TcpServer.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/TcpServer.o -c /home/user/mymuduo/mymuduo/TcpServer.cc

CMakeFiles/mymuduo.dir/TcpServer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/TcpServer.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/TcpServer.cc > CMakeFiles/mymuduo.dir/TcpServer.i

CMakeFiles/mymuduo.dir/TcpServer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/TcpServer.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/TcpServer.cc -o CMakeFiles/mymuduo.dir/TcpServer.s

CMakeFiles/mymuduo.dir/TcpServer.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/TcpServer.o.requires

CMakeFiles/mymuduo.dir/TcpServer.o.provides: CMakeFiles/mymuduo.dir/TcpServer.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/TcpServer.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/TcpServer.o.provides

CMakeFiles/mymuduo.dir/TcpServer.o.provides.build: CMakeFiles/mymuduo.dir/TcpServer.o

CMakeFiles/mymuduo.dir/EventLoop.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EventLoop.o: ../EventLoop.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/EventLoop.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/EventLoop.o -c /home/user/mymuduo/mymuduo/EventLoop.cc

CMakeFiles/mymuduo.dir/EventLoop.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EventLoop.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/EventLoop.cc > CMakeFiles/mymuduo.dir/EventLoop.i

CMakeFiles/mymuduo.dir/EventLoop.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EventLoop.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/EventLoop.cc -o CMakeFiles/mymuduo.dir/EventLoop.s

CMakeFiles/mymuduo.dir/EventLoop.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/EventLoop.o.requires

CMakeFiles/mymuduo.dir/EventLoop.o.provides: CMakeFiles/mymuduo.dir/EventLoop.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/EventLoop.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/EventLoop.o.provides

CMakeFiles/mymuduo.dir/EventLoop.o.provides.build: CMakeFiles/mymuduo.dir/EventLoop.o

CMakeFiles/mymuduo.dir/Channel.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Channel.o: ../Channel.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/Channel.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Channel.o -c /home/user/mymuduo/mymuduo/Channel.cc

CMakeFiles/mymuduo.dir/Channel.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Channel.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/Channel.cc > CMakeFiles/mymuduo.dir/Channel.i

CMakeFiles/mymuduo.dir/Channel.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Channel.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/Channel.cc -o CMakeFiles/mymuduo.dir/Channel.s

CMakeFiles/mymuduo.dir/Channel.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/Channel.o.requires

CMakeFiles/mymuduo.dir/Channel.o.provides: CMakeFiles/mymuduo.dir/Channel.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/Channel.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/Channel.o.provides

CMakeFiles/mymuduo.dir/Channel.o.provides.build: CMakeFiles/mymuduo.dir/Channel.o

CMakeFiles/mymuduo.dir/Poller.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Poller.o: ../Poller.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/Poller.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Poller.o -c /home/user/mymuduo/mymuduo/Poller.cc

CMakeFiles/mymuduo.dir/Poller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Poller.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/Poller.cc > CMakeFiles/mymuduo.dir/Poller.i

CMakeFiles/mymuduo.dir/Poller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Poller.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/Poller.cc -o CMakeFiles/mymuduo.dir/Poller.s

CMakeFiles/mymuduo.dir/Poller.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/Poller.o.requires

CMakeFiles/mymuduo.dir/Poller.o.provides: CMakeFiles/mymuduo.dir/Poller.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/Poller.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/Poller.o.provides

CMakeFiles/mymuduo.dir/Poller.o.provides.build: CMakeFiles/mymuduo.dir/Poller.o

CMakeFiles/mymuduo.dir/DefaultPoller.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/DefaultPoller.o: ../DefaultPoller.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/DefaultPoller.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/DefaultPoller.o -c /home/user/mymuduo/mymuduo/DefaultPoller.cc

CMakeFiles/mymuduo.dir/DefaultPoller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/DefaultPoller.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/DefaultPoller.cc > CMakeFiles/mymuduo.dir/DefaultPoller.i

CMakeFiles/mymuduo.dir/DefaultPoller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/DefaultPoller.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/DefaultPoller.cc -o CMakeFiles/mymuduo.dir/DefaultPoller.s

CMakeFiles/mymuduo.dir/DefaultPoller.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/DefaultPoller.o.requires

CMakeFiles/mymuduo.dir/DefaultPoller.o.provides: CMakeFiles/mymuduo.dir/DefaultPoller.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/DefaultPoller.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/DefaultPoller.o.provides

CMakeFiles/mymuduo.dir/DefaultPoller.o.provides.build: CMakeFiles/mymuduo.dir/DefaultPoller.o

CMakeFiles/mymuduo.dir/EpollPoller.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EpollPoller.o: ../EpollPoller.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/EpollPoller.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/EpollPoller.o -c /home/user/mymuduo/mymuduo/EpollPoller.cc

CMakeFiles/mymuduo.dir/EpollPoller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EpollPoller.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/EpollPoller.cc > CMakeFiles/mymuduo.dir/EpollPoller.i

CMakeFiles/mymuduo.dir/EpollPoller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EpollPoller.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/EpollPoller.cc -o CMakeFiles/mymuduo.dir/EpollPoller.s

CMakeFiles/mymuduo.dir/EpollPoller.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/EpollPoller.o.requires

CMakeFiles/mymuduo.dir/EpollPoller.o.provides: CMakeFiles/mymuduo.dir/EpollPoller.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/EpollPoller.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/EpollPoller.o.provides

CMakeFiles/mymuduo.dir/EpollPoller.o.provides.build: CMakeFiles/mymuduo.dir/EpollPoller.o

CMakeFiles/mymuduo.dir/CurrentThread.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/CurrentThread.o: ../CurrentThread.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/CurrentThread.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/CurrentThread.o -c /home/user/mymuduo/mymuduo/CurrentThread.cc

CMakeFiles/mymuduo.dir/CurrentThread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/CurrentThread.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/CurrentThread.cc > CMakeFiles/mymuduo.dir/CurrentThread.i

CMakeFiles/mymuduo.dir/CurrentThread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/CurrentThread.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/CurrentThread.cc -o CMakeFiles/mymuduo.dir/CurrentThread.s

CMakeFiles/mymuduo.dir/CurrentThread.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/CurrentThread.o.requires

CMakeFiles/mymuduo.dir/CurrentThread.o.provides: CMakeFiles/mymuduo.dir/CurrentThread.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/CurrentThread.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/CurrentThread.o.provides

CMakeFiles/mymuduo.dir/CurrentThread.o.provides.build: CMakeFiles/mymuduo.dir/CurrentThread.o

CMakeFiles/mymuduo.dir/Thread.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Thread.o: ../Thread.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/Thread.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Thread.o -c /home/user/mymuduo/mymuduo/Thread.cc

CMakeFiles/mymuduo.dir/Thread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Thread.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/Thread.cc > CMakeFiles/mymuduo.dir/Thread.i

CMakeFiles/mymuduo.dir/Thread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Thread.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/Thread.cc -o CMakeFiles/mymuduo.dir/Thread.s

CMakeFiles/mymuduo.dir/Thread.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/Thread.o.requires

CMakeFiles/mymuduo.dir/Thread.o.provides: CMakeFiles/mymuduo.dir/Thread.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/Thread.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/Thread.o.provides

CMakeFiles/mymuduo.dir/Thread.o.provides.build: CMakeFiles/mymuduo.dir/Thread.o

CMakeFiles/mymuduo.dir/EventLoopThread.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EventLoopThread.o: ../EventLoopThread.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/EventLoopThread.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/EventLoopThread.o -c /home/user/mymuduo/mymuduo/EventLoopThread.cc

CMakeFiles/mymuduo.dir/EventLoopThread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EventLoopThread.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/EventLoopThread.cc > CMakeFiles/mymuduo.dir/EventLoopThread.i

CMakeFiles/mymuduo.dir/EventLoopThread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EventLoopThread.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/EventLoopThread.cc -o CMakeFiles/mymuduo.dir/EventLoopThread.s

CMakeFiles/mymuduo.dir/EventLoopThread.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/EventLoopThread.o.requires

CMakeFiles/mymuduo.dir/EventLoopThread.o.provides: CMakeFiles/mymuduo.dir/EventLoopThread.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/EventLoopThread.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/EventLoopThread.o.provides

CMakeFiles/mymuduo.dir/EventLoopThread.o.provides.build: CMakeFiles/mymuduo.dir/EventLoopThread.o

CMakeFiles/mymuduo.dir/EventLoopThreadPool.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EventLoopThreadPool.o: ../EventLoopThreadPool.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/EventLoopThreadPool.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/EventLoopThreadPool.o -c /home/user/mymuduo/mymuduo/EventLoopThreadPool.cc

CMakeFiles/mymuduo.dir/EventLoopThreadPool.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EventLoopThreadPool.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/EventLoopThreadPool.cc > CMakeFiles/mymuduo.dir/EventLoopThreadPool.i

CMakeFiles/mymuduo.dir/EventLoopThreadPool.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EventLoopThreadPool.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/EventLoopThreadPool.cc -o CMakeFiles/mymuduo.dir/EventLoopThreadPool.s

CMakeFiles/mymuduo.dir/EventLoopThreadPool.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/EventLoopThreadPool.o.requires

CMakeFiles/mymuduo.dir/EventLoopThreadPool.o.provides: CMakeFiles/mymuduo.dir/EventLoopThreadPool.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/EventLoopThreadPool.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/EventLoopThreadPool.o.provides

CMakeFiles/mymuduo.dir/EventLoopThreadPool.o.provides.build: CMakeFiles/mymuduo.dir/EventLoopThreadPool.o

CMakeFiles/mymuduo.dir/Socket.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Socket.o: ../Socket.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_14)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/Socket.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Socket.o -c /home/user/mymuduo/mymuduo/Socket.cc

CMakeFiles/mymuduo.dir/Socket.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Socket.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/Socket.cc > CMakeFiles/mymuduo.dir/Socket.i

CMakeFiles/mymuduo.dir/Socket.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Socket.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/Socket.cc -o CMakeFiles/mymuduo.dir/Socket.s

CMakeFiles/mymuduo.dir/Socket.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/Socket.o.requires

CMakeFiles/mymuduo.dir/Socket.o.provides: CMakeFiles/mymuduo.dir/Socket.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/Socket.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/Socket.o.provides

CMakeFiles/mymuduo.dir/Socket.o.provides.build: CMakeFiles/mymuduo.dir/Socket.o

CMakeFiles/mymuduo.dir/Acceptor.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Acceptor.o: ../Acceptor.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_15)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/Acceptor.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Acceptor.o -c /home/user/mymuduo/mymuduo/Acceptor.cc

CMakeFiles/mymuduo.dir/Acceptor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Acceptor.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/Acceptor.cc > CMakeFiles/mymuduo.dir/Acceptor.i

CMakeFiles/mymuduo.dir/Acceptor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Acceptor.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/Acceptor.cc -o CMakeFiles/mymuduo.dir/Acceptor.s

CMakeFiles/mymuduo.dir/Acceptor.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/Acceptor.o.requires

CMakeFiles/mymuduo.dir/Acceptor.o.provides: CMakeFiles/mymuduo.dir/Acceptor.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/Acceptor.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/Acceptor.o.provides

CMakeFiles/mymuduo.dir/Acceptor.o.provides.build: CMakeFiles/mymuduo.dir/Acceptor.o

CMakeFiles/mymuduo.dir/TcpConnection.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/TcpConnection.o: ../TcpConnection.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_16)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/TcpConnection.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/TcpConnection.o -c /home/user/mymuduo/mymuduo/TcpConnection.cc

CMakeFiles/mymuduo.dir/TcpConnection.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/TcpConnection.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/TcpConnection.cc > CMakeFiles/mymuduo.dir/TcpConnection.i

CMakeFiles/mymuduo.dir/TcpConnection.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/TcpConnection.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/TcpConnection.cc -o CMakeFiles/mymuduo.dir/TcpConnection.s

CMakeFiles/mymuduo.dir/TcpConnection.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/TcpConnection.o.requires

CMakeFiles/mymuduo.dir/TcpConnection.o.provides: CMakeFiles/mymuduo.dir/TcpConnection.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/TcpConnection.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/TcpConnection.o.provides

CMakeFiles/mymuduo.dir/TcpConnection.o.provides.build: CMakeFiles/mymuduo.dir/TcpConnection.o

CMakeFiles/mymuduo.dir/Callback.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Callback.o: ../Callback.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_17)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/Callback.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Callback.o -c /home/user/mymuduo/mymuduo/Callback.cc

CMakeFiles/mymuduo.dir/Callback.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Callback.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/Callback.cc > CMakeFiles/mymuduo.dir/Callback.i

CMakeFiles/mymuduo.dir/Callback.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Callback.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/Callback.cc -o CMakeFiles/mymuduo.dir/Callback.s

CMakeFiles/mymuduo.dir/Callback.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/Callback.o.requires

CMakeFiles/mymuduo.dir/Callback.o.provides: CMakeFiles/mymuduo.dir/Callback.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/Callback.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/Callback.o.provides

CMakeFiles/mymuduo.dir/Callback.o.provides.build: CMakeFiles/mymuduo.dir/Callback.o

CMakeFiles/mymuduo.dir/Buffer.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Buffer.o: ../Buffer.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_18)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/Buffer.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/Buffer.o -c /home/user/mymuduo/mymuduo/Buffer.cc

CMakeFiles/mymuduo.dir/Buffer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Buffer.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/Buffer.cc > CMakeFiles/mymuduo.dir/Buffer.i

CMakeFiles/mymuduo.dir/Buffer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Buffer.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/Buffer.cc -o CMakeFiles/mymuduo.dir/Buffer.s

CMakeFiles/mymuduo.dir/Buffer.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/Buffer.o.requires

CMakeFiles/mymuduo.dir/Buffer.o.provides: CMakeFiles/mymuduo.dir/Buffer.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/Buffer.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/Buffer.o.provides

CMakeFiles/mymuduo.dir/Buffer.o.provides.build: CMakeFiles/mymuduo.dir/Buffer.o

CMakeFiles/mymuduo.dir/HttpServer.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/HttpServer.o: ../HttpServer.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_19)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/HttpServer.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/HttpServer.o -c /home/user/mymuduo/mymuduo/HttpServer.cc

CMakeFiles/mymuduo.dir/HttpServer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/HttpServer.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/HttpServer.cc > CMakeFiles/mymuduo.dir/HttpServer.i

CMakeFiles/mymuduo.dir/HttpServer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/HttpServer.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/HttpServer.cc -o CMakeFiles/mymuduo.dir/HttpServer.s

CMakeFiles/mymuduo.dir/HttpServer.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/HttpServer.o.requires

CMakeFiles/mymuduo.dir/HttpServer.o.provides: CMakeFiles/mymuduo.dir/HttpServer.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/HttpServer.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/HttpServer.o.provides

CMakeFiles/mymuduo.dir/HttpServer.o.provides.build: CMakeFiles/mymuduo.dir/HttpServer.o

CMakeFiles/mymuduo.dir/HttpRequest.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/HttpRequest.o: ../HttpRequest.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_20)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/HttpRequest.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/HttpRequest.o -c /home/user/mymuduo/mymuduo/HttpRequest.cc

CMakeFiles/mymuduo.dir/HttpRequest.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/HttpRequest.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/HttpRequest.cc > CMakeFiles/mymuduo.dir/HttpRequest.i

CMakeFiles/mymuduo.dir/HttpRequest.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/HttpRequest.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/HttpRequest.cc -o CMakeFiles/mymuduo.dir/HttpRequest.s

CMakeFiles/mymuduo.dir/HttpRequest.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/HttpRequest.o.requires

CMakeFiles/mymuduo.dir/HttpRequest.o.provides: CMakeFiles/mymuduo.dir/HttpRequest.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/HttpRequest.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/HttpRequest.o.provides

CMakeFiles/mymuduo.dir/HttpRequest.o.provides.build: CMakeFiles/mymuduo.dir/HttpRequest.o

CMakeFiles/mymuduo.dir/HttpResponse.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/HttpResponse.o: ../HttpResponse.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_21)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/HttpResponse.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/HttpResponse.o -c /home/user/mymuduo/mymuduo/HttpResponse.cc

CMakeFiles/mymuduo.dir/HttpResponse.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/HttpResponse.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/HttpResponse.cc > CMakeFiles/mymuduo.dir/HttpResponse.i

CMakeFiles/mymuduo.dir/HttpResponse.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/HttpResponse.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/HttpResponse.cc -o CMakeFiles/mymuduo.dir/HttpResponse.s

CMakeFiles/mymuduo.dir/HttpResponse.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/HttpResponse.o.requires

CMakeFiles/mymuduo.dir/HttpResponse.o.provides: CMakeFiles/mymuduo.dir/HttpResponse.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/HttpResponse.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/HttpResponse.o.provides

CMakeFiles/mymuduo.dir/HttpResponse.o.provides.build: CMakeFiles/mymuduo.dir/HttpResponse.o

CMakeFiles/mymuduo.dir/HttpContext.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/HttpContext.o: ../HttpContext.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/mymuduo/mymuduo/build/CMakeFiles $(CMAKE_PROGRESS_22)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/mymuduo.dir/HttpContext.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mymuduo.dir/HttpContext.o -c /home/user/mymuduo/mymuduo/HttpContext.cc

CMakeFiles/mymuduo.dir/HttpContext.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/HttpContext.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/mymuduo/mymuduo/HttpContext.cc > CMakeFiles/mymuduo.dir/HttpContext.i

CMakeFiles/mymuduo.dir/HttpContext.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/HttpContext.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/mymuduo/mymuduo/HttpContext.cc -o CMakeFiles/mymuduo.dir/HttpContext.s

CMakeFiles/mymuduo.dir/HttpContext.o.requires:
.PHONY : CMakeFiles/mymuduo.dir/HttpContext.o.requires

CMakeFiles/mymuduo.dir/HttpContext.o.provides: CMakeFiles/mymuduo.dir/HttpContext.o.requires
	$(MAKE) -f CMakeFiles/mymuduo.dir/build.make CMakeFiles/mymuduo.dir/HttpContext.o.provides.build
.PHONY : CMakeFiles/mymuduo.dir/HttpContext.o.provides

CMakeFiles/mymuduo.dir/HttpContext.o.provides.build: CMakeFiles/mymuduo.dir/HttpContext.o

# Object files for target mymuduo
mymuduo_OBJECTS = \
"CMakeFiles/mymuduo.dir/Logger.o" \
"CMakeFiles/mymuduo.dir/Timestamp.o" \
"CMakeFiles/mymuduo.dir/InetAddress.o" \
"CMakeFiles/mymuduo.dir/TcpServer.o" \
"CMakeFiles/mymuduo.dir/EventLoop.o" \
"CMakeFiles/mymuduo.dir/Channel.o" \
"CMakeFiles/mymuduo.dir/Poller.o" \
"CMakeFiles/mymuduo.dir/DefaultPoller.o" \
"CMakeFiles/mymuduo.dir/EpollPoller.o" \
"CMakeFiles/mymuduo.dir/CurrentThread.o" \
"CMakeFiles/mymuduo.dir/Thread.o" \
"CMakeFiles/mymuduo.dir/EventLoopThread.o" \
"CMakeFiles/mymuduo.dir/EventLoopThreadPool.o" \
"CMakeFiles/mymuduo.dir/Socket.o" \
"CMakeFiles/mymuduo.dir/Acceptor.o" \
"CMakeFiles/mymuduo.dir/TcpConnection.o" \
"CMakeFiles/mymuduo.dir/Callback.o" \
"CMakeFiles/mymuduo.dir/Buffer.o" \
"CMakeFiles/mymuduo.dir/HttpServer.o" \
"CMakeFiles/mymuduo.dir/HttpRequest.o" \
"CMakeFiles/mymuduo.dir/HttpResponse.o" \
"CMakeFiles/mymuduo.dir/HttpContext.o"

# External object files for target mymuduo
mymuduo_EXTERNAL_OBJECTS =

../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Logger.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Timestamp.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/InetAddress.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/TcpServer.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EventLoop.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Channel.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Poller.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/DefaultPoller.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EpollPoller.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/CurrentThread.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Thread.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EventLoopThread.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EventLoopThreadPool.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Socket.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Acceptor.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/TcpConnection.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Callback.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Buffer.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/HttpServer.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/HttpRequest.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/HttpResponse.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/HttpContext.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/build.make
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../lib/libmymuduo.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mymuduo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mymuduo.dir/build: ../lib/libmymuduo.so
.PHONY : CMakeFiles/mymuduo.dir/build

CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/Logger.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/Timestamp.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/InetAddress.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/TcpServer.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/EventLoop.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/Channel.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/Poller.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/DefaultPoller.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/EpollPoller.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/CurrentThread.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/Thread.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/EventLoopThread.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/EventLoopThreadPool.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/Socket.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/Acceptor.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/TcpConnection.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/Callback.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/Buffer.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/HttpServer.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/HttpRequest.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/HttpResponse.o.requires
CMakeFiles/mymuduo.dir/requires: CMakeFiles/mymuduo.dir/HttpContext.o.requires
.PHONY : CMakeFiles/mymuduo.dir/requires

CMakeFiles/mymuduo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mymuduo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mymuduo.dir/clean

CMakeFiles/mymuduo.dir/depend:
	cd /home/user/mymuduo/mymuduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/mymuduo/mymuduo /home/user/mymuduo/mymuduo /home/user/mymuduo/mymuduo/build /home/user/mymuduo/mymuduo/build /home/user/mymuduo/mymuduo/build/CMakeFiles/mymuduo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mymuduo.dir/depend

