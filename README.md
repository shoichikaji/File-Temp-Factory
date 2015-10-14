[![Build Status](https://travis-ci.org/shoichikaji/File-Temp-Factory.svg?branch=master)](https://travis-ci.org/shoichikaji/File-Temp-Factory)

NAME
====

File::Temp::Factory - manage tempfile/tempdir

SYNOPSIS
========

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

DESCRIPTION
===========

File::Temp::Factory manages tempfiles and tempdirs.

AUTHOR
======

Shoichi Kaji <skaji@cpan.org>

COPYRIGHT AND LICENSE
=====================

Copyright 2015 Shoichi Kaji

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.
