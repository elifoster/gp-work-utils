class Pagetitles < ActionModule
  def official_only?
    true
  end

  SUMMARY = 'Setting to official.'
  SITENAME = 'Official {{SITENAME}}'

  def execute
    @mw.create_page('MediaWiki:Pagetitle', "$1 - #{SITENAME}", summary: SUMMARY)
    @mw.create_page('MediaWiki:Pagetitle-view-mainpage', SITENAME, summary: SUMMARY)
  end
end
