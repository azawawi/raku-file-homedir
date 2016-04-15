unit class File::HomeDir;

use File::HomeDir::Win32;
use File::HomeDir::MacOSX;
use File::HomeDir::Unix;

my File::HomeDir $singleton;

method new
{
  return $singleton if $singleton.defined;
  
  if $*DISTRO.is-win {
    $singleton = self.bless does File::HomeDir::Win32;
  } elsif $*DISTRO.name eq 'macosx' {
    $singleton = self.bless does File::HomeDir::MacOSX;
  } else {
    $singleton = self.bless does File::HomeDir::Unix;
  }

  return $singleton;
}

method my-home {
  return File::HomeDir.new.my-home;
}

method my-desktop {
  return File::HomeDir.new.my-desktop;
}

method my-documents {
  return File::HomeDir.new.my-documents;
}

method my-music {
  return File::HomeDir.new.my-music;
}

method my-pictures {
  return File::HomeDir.new.my-pictures;
}

method my-videos {
  return File::HomeDir.new.my-videos;
}

method my-data {
  return File::HomeDir.new.my-data;
}

method my-dist-config(Str $distro-name) {
  return File::HomeDir.new.my-dist-config($distro-name);
}

method my-dist-data(Str $distro-name) {
  return File::HomeDir.new.my-dist-data($distro-name);
}

method users-home(Str $user) {
  return File::HomeDir.new.users-home($user);
}

method users-documents(Str $user) {
  return File::HomeDir.new.users-documents($user);
}

method users-data(Str $user) {
  return File::HomeDir.new.users-data($user);
}

=begin pod

TODO document File::HomeDir

=end pod
