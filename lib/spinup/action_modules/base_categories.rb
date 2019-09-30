class BaseCategories < ActionModule
  def execute
    @mw.create_page("Category:#{SITENAME}", 'This is the root category.')
    @mw.create_page("Category:#{GAMENAME}", "[[Category:#{SITENAME}]]")
  end
end
