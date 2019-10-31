class MainPageTalk < ActionModule
  def execute
    cp_talk = mw.get_text('Project talk:Community portal')
    mw.create_page("Talk:#{SITENAME}", cp_talk, summary: 'Creating base talk page to prevent red links on the main page.')
  end
end
