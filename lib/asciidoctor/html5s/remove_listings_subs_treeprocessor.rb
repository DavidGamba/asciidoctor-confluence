require 'asciidoctor/html5s/version'
require 'asciidoctor/extensions' unless RUBY_PLATFORM == 'opal'

module Asciidoctor::Html5s

  # This extension removes all substituions for listings blocks.
  class RemoveListingSubsTreeprocessor < ::Asciidoctor::Extensions::Treeprocessor
    def process(document)
      document.find_by(context: :listing) do |block|
        block.subs.clear
      end
    end
  end
end
