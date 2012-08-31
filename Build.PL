
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Copy::Recursive" => 0,
    "File::Slurp" => 0,
    "File::chdir" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => "0.98"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Manipulate /etc/{passwd,shadow,group,gshadow} entries",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Unix-Passwd-File",
  "dist_version" => "0.04",
  "license" => "perl",
  "module_name" => "Unix::Passwd::File",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "File::Flock" => 0,
    "List::MoreUtils" => 0,
    "Log::Any" => 0,
    "Rinci" => "v1.1.28",
    "UUID::Random" => 0,
    "perl" => "5.010001"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
