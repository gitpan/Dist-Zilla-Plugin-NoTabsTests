package Dist::Zilla::Plugin::NoTabsTests;
BEGIN {
  $Dist::Zilla::Plugin::NoTabsTests::AUTHORITY = 'cpan:FLORA';
}
BEGIN {
  $Dist::Zilla::Plugin::NoTabsTests::VERSION = '0.01';
}
# ABSTRACT: Release tests making sure hard tabs aren't used

use Moose;
use namespace::autoclean;

extends 'Dist::Zilla::Plugin::InlineFiles';


__PACKAGE__->meta->make_immutable;

1;



=pod

=head1 NAME

Dist::Zilla::Plugin::NoTabsTests - Release tests making sure hard tabs aren't used

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing
the following files:

=over 4

=item *

xt/release/no-tabs.t

a standard Test::NoTabs test

=back

=head1 AUTHOR

  Florian Ragwitz <rafl@debian.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Florian Ragwitz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__DATA__
___[ xt/release/no-tabs.t ]___
use strict;
use warnings;
use Test::More;

eval 'use Test::NoTabs';
plan skip_all => 'Test::NoTabs required' if $@;

all_perl_files_ok();
