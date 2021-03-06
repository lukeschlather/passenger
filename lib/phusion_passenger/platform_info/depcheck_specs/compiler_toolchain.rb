define 'gcc' do
  name "GNU C compiler"
  website "http://gcc.gnu.org/"
  define_checker do
    require 'phusion_passenger/platform_info/compiler'
    check_for_command(PlatformInfo.cc, false)
  end
  
  on :debian do
    apt_get_install "build-essential"
  end
  on :mandriva do
    urpmi "gcc"
  end
  on :redhat do
    yum_install "gcc"
  end
  on :gentoo do
    emerge "gcc"
  end
  on :macosx do
    xcode_install "Command Line Tools"
  end
end

define 'g++' do
  name "GNU C++ compiler"
  website "http://gcc.gnu.org/"
  define_checker do
    require 'phusion_passenger/platform_info/compiler'
    check_for_command(PlatformInfo.cxx, false)
  end
  
  on :debian do
    apt_get_install "build-essential"
  end
  on :mandriva do
    urpmi "gcc-c++"
  end
  on :redhat do
    yum_install "gcc-c++"
  end
  on :gentoo do
    emerge "gcc"
  end
  on :macosx do
    xcode_install "Command Line Tools"
  end
end

define 'make' do
  name "The 'make' tool"
  define_checker do
    require 'phusion_passenger/platform_info/compiler'
    check_for_command(PlatformInfo.make)
  end
  
  on :debian do
    apt_get_install "build-essential"
  end
  on :mandriva do
    urpmi "make"
  end
  on :redhat do
    yum_install "make"
  end
  on :macosx do
    xcode_install "Command Line Tools"
  end
  on :other_platforms do
    website "http://www.gnu.org/software/make/"
  end
end

define 'gmake' do
  name "GNU make"
  define_checker do
    require 'phusion_passenger/platform_info/compiler'
    check_for_command(PlatformInfo.gnu_make)
  end
  
  on :debian do
    apt_get_install "build-essential"
  end
  on :mandriva do
    urpmi "make"
  end
  on :redhat do
    yum_install "make"
  end
  on :macosx do
    xcode_install "Command Line Tools"
  end
  on :other_platforms do
    website "http://www.gnu.org/software/make/"
  end
end
