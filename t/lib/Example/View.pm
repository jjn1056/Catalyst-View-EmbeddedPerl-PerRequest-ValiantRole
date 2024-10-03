package Example::View;

use Moose;

extends 'Catalyst::View::EmbeddedPerl::PerRequest';
with 'Catalyst::View::EmbeddedPerl::PerRequest::ValiantRole';

__PACKAGE__->meta->make_immutable;
__PACKAGE__->config(
  prepend => 'use v5.40', 
  content_type=>'text/html; charset=UTF-8'
);

