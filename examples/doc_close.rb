$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib')

require 'rubygems'
require 'prawn'
require 'prawn/js'

Prawn::Document.generate "js_doc_close.pdf" do |pdf|

  pdf.add_will_close_js("app.alert('closing',3)")

  pdf.draw_text "Javascript Prototype", :at => [150,720], :size => 32

end
