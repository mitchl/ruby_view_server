require 'erb'
require 'date'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

page_string = "
<html>
  <body>
    <p>I am a web page</p>
    <p>The time is now:
    <%= Time.now %></p>
  </body>
</html>"

template2 = ERB.new page_string
puts template2.result(binding)


