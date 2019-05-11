class EditSupport < ActionModule
  def execute
    @mw.edit('Support', @mw.get_text('Support').sub('{{gamename}}', GAMENAME), summary: 'Fix redirect')
  end
end
