use v6;
unit class File::Temp::Factory;


=begin pod

=head1 NAME

File::Temp::Factory - manage tempfile/tempdir

=head1 SYNOPSIS

    class YourClass {
        use File::Temp::Factory;
        has $!factory = File::Temp::Factory.new;

        method run() {
            LEAVE { $!factory.cleanup }
            my $file = self.foo();
            my $dir  = self.bar();
        }

        method foo() {
            my ($file, $fh) = $!factory.tempfile;
            # do something
            return $file;
        }
        method bar() {
            my $dir = $!factory.tempdir;
            # do something
            return $dir;
        }
    }

=head1 DESCRIPTION

File::Temp::Factory manages tempfiles and tempdirs.

=head1 AUTHOR

Shoichi Kaji <skaji@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2015 Shoichi Kaji

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
