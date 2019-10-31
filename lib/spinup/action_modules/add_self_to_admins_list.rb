class AddSelfToAdminsList < ActionModule
  def execute
    admins_list = mw.get_text('Template:Admins')
    mw.edit('Template:Admins',
             admins_list.split("\n")
             .delete_if { |line| line.include?('delete this line during spin up') }
             .join("\n")
             .sub('<!--{{Wiki admin|Game widow}}-->', '{{Wiki admin|TheSatanicSanta}}'),
             summary: 'Replacing curse admin with TheSatanicSanta.')
  end
end
