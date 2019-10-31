class HideMaintenanceCategories < ActionModule
  CATEGORIES = [
  'Candidates for deletion',
  'Candidates for speedy deletion',
  'Citation needed',
  'Cleanup',
  'Images needing improvement',
  'Pages to be merged',
  'Pages to be moved',
  'Pages with broken file links',
  'Stubs',
  'Unattributed files'
  ]

  def execute
    CATEGORIES.each do |category|
      title = "Category:#{category}"
      text = mw.get_text(title)
      text << "\n__HIDDENCAT__"
      mw.edit(title, text, summary: 'Hiding category.')
    end
  end
end
