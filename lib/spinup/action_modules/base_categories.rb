class BaseCategories < ActionModule
  def execute
    @mw.create_page("Category:#{GAMENAME}", '[[Category:Contents]]')
    @mw.create_page("Category:#{SITENAME}", '[[Category:Contents]]')
    @mw.create_page('Category:Contents', 'This is the root category.')
  end
end
