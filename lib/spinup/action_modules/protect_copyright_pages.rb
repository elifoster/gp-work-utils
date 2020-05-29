class ProtectCopyrightPages < ActionModule
  using ButtExtensions

  CATEGORIES = [
    'Category:Copyright templates',
    'Category:Legal notices'
  ]

  def execute
    CATEGORIES.each do |cat|
      pages = mw.get_category_members(cat)
      pages.each do |page|
        puts "Protecting #{page}"
        resp = mw.protect(page)
        if resp['error']
          puts "#{resp['error']['code']}: #{resp['error']['info']}"
        end
      end
    end
  end
end
