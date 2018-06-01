class MoveHowToPlay < ActionModule
  def execute
    @mw.move('How to play guide for Default Loadout', "How to play guide for #{GAMENAME}", suppress_redirect: true )
  end
end
