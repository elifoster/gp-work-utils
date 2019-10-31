class Pagetitles < ActionModule
  def official_only?
    true
  end

  SUMMARY = 'Setting to official.'
  PAGETITLE = 'Official {{SITENAME}}'

  def execute
    mw.create_page('MediaWiki:Pagetitle', "$1 - #{PAGETITLE}", summary: SUMMARY)
    mw.create_page('MediaWiki:Pagetitle-view-mainpage', PAGETITLE, summary: SUMMARY)

    section1_text = mw.get_text("#{SITENAME}/Section 1")
    mw.edit("#{SITENAME}/Section 1", section1_text.gsub('Welcome to the {{Gamename}} Wiki', 'Welcome to the Official {{Gamename}} Wiki'), summary: SUMMARY)

    sectiontop_text = mw.get_text("#{SITENAME}/Top section")
    mw.edit("#{SITENAME}/Top section", sectiontop_text.gsub("Welcome to ''{{Gamename}}'' Wiki", 'Welcome to the Official {{Gamename}} Wiki'), summary: SUMMARY)
  end
end
