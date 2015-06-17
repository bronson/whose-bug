### Status

... and the bug is fixed!  In the last four years someone made a
change to one of the packages in the Gemfile and cured the problem.

### Original Bug

There's a bad interaction between a bunch of gems.  I haven't been
able to figure out whose fault it is.

To see it, do this:

    git clone git@github.com:bronson/whose-bug.git
    bundle install
    ./test.rb

You'll get an error like this:

    active_support/json/encoding.rb:61:in `options_for': undefined method `merge'

Removing any of the gems in the Gemfile makes the bug go away.


One solution is to never pass a Hashie::Mash to JSON.pretty_generate.
Seems an unfortunate limitation though.
