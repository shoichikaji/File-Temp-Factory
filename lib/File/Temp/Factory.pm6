use v6;
unit class File::Temp::Factory;


=begin pod

=head1 NAME

File::Temp::Factory - manage tempfile/tempdir

=head1 SYNOPSIS

  use File::Temp::Factory;
  my $factory = File::Temp::Factory.new;

  # Usage1
  {
      LEAVE { $factory.cleanup }
      my ($file, $fh) = $factory.tempfile;
      my $tempdir = $factory.temdir;
  }

  # Usage2
  $factory.tempfile: -> $file, $fh {
      # do something with $file, $fh
  };
  $factory.tempdir: -> $tempdir {
      # do something with $tempdir;
  };
  $factory.tempd: -> $tempdir {
      # pwd = $tempdir
      # do something with $tempdir
  };

=head1 DESCRIPTION

File::Temp::Factory manages tempfiles and tempdirs.

=head1 AUTHOR

Shoichi Kaji <skaji@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2015 Shoichi Kaji

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
