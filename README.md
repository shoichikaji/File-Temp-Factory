[![Build Status](https://travis-ci.org/shoichikaji/File-Temp-Factory.svg?branch=master)](https://travis-ci.org/shoichikaji/File-Temp-Factory)

NAME
====

File::Temp::Factory - manage tempfile/tempdir

SYNOPSIS
========

    use File::Temp::Factory;
    my $factory = File::Temp::Factory.new;

    # Usage1
    $factory.scope: {
        my ($file, $fh) = $factory.tempfile;
        my $tempdir = $factory.tempdir;

    }; # automatically cleanup tempfiles and tempdirs

    # Usage2
    {
        LEAVE { $factory.cleanup }
        my ($file, $fh) = $factory.tempfile;
        my $tempdir = $factory.temdir;
    }

    # Usage3
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
