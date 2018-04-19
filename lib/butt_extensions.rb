require 'mediawiki/butt'

module ButtExtensions
  refine MediaWiki::Butt do
    # An incomplete extension function to patrol revisions.
    # @param opts [Hash<Symbol, String>] Options param
    # @option :rcid Recentchanges ID to patrol
    # @option :revid Revision ID to patrol
    # @option :tags Change tags to apply to the entry in the patrol log.
    # @see https://www.mediawiki.org/wiki/API:Patrol Patrol API documentation
    # @return see #post
    def patrol(opts = {})
      params = {
        action: 'patrol',
        token: get_token('patrol')
      }
      params[:rcid] = opts[:rcid] if opts[:rcid]
      params[:revid] = opts[:revid] if opts[:revid]
      params[:tags] = opts[:tags] if opts[:tags]
      post(params)
    end

    # An extension function to parse the provided string into html
    # @param str [String] The string to parse
    # @return [String] The returned parsed wikitext
    def parse_text(str)
      params = {
        action: 'parse',
        text: str,
        disablelimitreport: true
      }
      post(params)['parse']['text']['*']
    end
  end
end
