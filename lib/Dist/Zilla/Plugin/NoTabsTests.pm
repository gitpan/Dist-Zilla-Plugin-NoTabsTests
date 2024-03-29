package Dist::Zilla::Plugin::NoTabsTests;
BEGIN {
  $Dist::Zilla::Plugin::NoTabsTests::AUTHORITY = 'cpan:ETHER';
}
{
  $Dist::Zilla::Plugin::NoTabsTests::VERSION = '0.02';
}
# git description: v0.02-1-gee00ff8

# ABSTRACT: (DEPRECATED) Release tests making sure hard tabs aren't used

use Moose;
extends 'Dist::Zilla::Plugin::Test::NoTabs';

use namespace::autoclean;

# don't start warning just yet - give people a little bit of time to update
#before register_component => sub {
#  warn "!!! [NoTabsTests] is deprecated and may be removed in a future release; replace it with [Test::Compile]\n";
#};

__PACKAGE__->meta->make_immutable;

__END__

=pod

=encoding utf-8

=for :stopwords Florian Ragwitz Karen Etheridge

=head1 NAME

Dist::Zilla::Plugin::NoTabsTests - (DEPRECATED) Release tests making sure hard tabs aren't used

=head1 VERSION

version 0.02

=head1 SYNOPSIS

In your F<dist.ini>:

    [NoTabsTests]
    module_finder = my_finder
    script_finder = other_finder

=head1 DESCRIPTION

This is a plugin that runs at the L<gather files|Dist::Zilla::Role::FileGatherer> stage,
providing the file F<xt/release/no-tabs.t>, a standard L<Test::NoTabs> test.

THIS MODULE IS DEPRECATED. Please use
L<Dist::Zilla::Plugin::Test::NoTabsTests> instead. it may be removed at a
later time.

In the meantime, it will continue working -- although (soon) with a warning.
Refer to the replacement for the actual documentation.

=head1 AUTHOR

Florian Ragwitz <rafl@debian.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Florian Ragwitz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 CONTRIBUTOR

Karen Etheridge <ether@cpan.org>

=cut
