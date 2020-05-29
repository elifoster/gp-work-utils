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

    # Cascade-protects a page for editing and moving at sysop level, with no expiry, and a summary of "High traffic page"
    # @param page [String] The page to protect
    # @return (see #post)
    def protect(page)
      params = {
        action: 'protect',
        title: page,
        cascade: true,
        protections: 'edit=sysop|move=sysop',
        expiry: 'never|never',
        reason: 'High traffic page',
        token: get_token
      }
      post(params)
    end
  end
end
