package Jobeet::Controller::Job;
use Ark 'Controller';

use Jobeet::Models;
has '+namespace' => default => 'job';

sub index : Path {
    my ($self, $c) = @_;
    $c->stash->{jobs} = models('Schema::Job');
}

__PACKAGE__->meta->make_immutable;

