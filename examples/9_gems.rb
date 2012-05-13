=begin

Sometimes you need extra methods to help you accomplish your task, you can install libraries which include methods for 
solving specific problems.

In Ruby, libriaries are called "gems", and we need to install them onto our machine before we can use them.

In order to install these gems we need an application to install the gems for us, this is called rubygems: http://docs.rubygems.org/read/chapter/1

After installing rubygems, you can now install gems from the commandline using the "gem" command, below is an example:
  -> gem install hpricot


A good place to search for gems:

https://www.ruby-toolbox.com/




After installing a gem, you need to require it in your .rb file:

require 'hpricot'

=end

#this won't work until you install the hpricot gem
require 'hpricot'

doc = Hpricot("<p>You finished the examples!</p><p>The more you node!</p>")
puts doc.search("//p").inner_html


