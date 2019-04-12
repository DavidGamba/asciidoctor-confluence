require 'asciidoctor/html5s/version'
require 'asciidoctor/html5s/converter'
require 'asciidoctor/html5s/replacements'
require 'asciidoctor/html5s/attached_colist_treeprocessor'
require 'asciidoctor/html5s/remove_listings_subs_treeprocessor'

unless RUBY_PLATFORM == 'opal'
  require 'asciidoctor/extensions'

  Asciidoctor::Extensions.register do
    treeprocessor Asciidoctor::Html5s::AttachedColistTreeprocessor
    treeprocessor Asciidoctor::Html5s::RemoveListingSubsTreeprocessor
  end
end
