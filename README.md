# File::HomeDir
[![Build status](https://ci.appveyor.com/api/projects/status/github/azawawi/raku-file-homedir?svg=true)](https://ci.appveyor.com/project/azawawi/raku-file-homedir/branch/master)

This is a Raku port of [File::HomeDir](https://metacpan.org/pod/File::HomeDir).
File::HomeDir is a module for locating the directories that are "owned" by a
user (typically your user) and to solve the various issues that arise trying to
find them consistently across a wide variety of platforms.

The end result is a single API that can find your resources on any platform,
making it relatively trivial to create Perl software that works elegantly and
correctly no matter where you run it.

## Example

```Raku
use v6;

use File::HomeDir;

say File::HomeDir.my-home;
say File::HomeDir.my-desktop;
say File::HomeDir.my-documents;
say File::HomeDir.my-pictures;
say File::HomeDir.my-videos;
```

## Installation

To install it using zef (a module management tool bundled with Rakudo Star):

```
zef install File::HomeDir
```

## Testing

- To run tests:
```
$ prove --ext .rakutest -ve "raku -I."
```

- To run all tests including author tests (Please make sure
[Test::Meta](https://github.com/jonathanstowe/Test-META) is installed):
```
$ zef install Test::META
$ TEST_AUTHOR=1 prove --ext .rakutest -ve "raku -I."
```

## Author

Raku version:
- Ahmad M. Zawawi, azawawi on #raku, https://github.com/azawawi/
- Tadeusz Sośnierz, tadzik on #raku, https://github.com/tadzik/
- Steve Dondley, sdondley on #raku, https://github.com/sdondley

Perl 5 version:
- Adam Kennedy (2005 - 2012)
- Chris Nandor (2006)
- Stephen Steneker (2006)
- Jérôme Quelin (2009-2011)
- Sean M. Burke (2000)

## License

MIT License
