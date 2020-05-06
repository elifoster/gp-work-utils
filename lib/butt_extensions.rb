require 'mediawiki/butt'

module ButtExtensions
  refine MediaWiki::Butt do
    # An extension function to parse the provided string into html
    # @param str [String] The string to parse
    # @return [String] The returned parsed wikitext
    def parse_text(str)
      params = {
        action: 'parse',
        text: str,
        disablelimitreport: true,
        wrapoutputclass: ''
      }
      post(params)['parse']['text']['*']
    end
  end
end
