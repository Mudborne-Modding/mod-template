-- example mod!

return {

  -- called once when the game loads (or when your mod is marked 'active')
  -- in both situations, a file has not yet been loaded! wait until 'game.g.game_state == 'GAME' for that
  -- return true if your load code went as expected!
  load = function(mod_id)
    print('Hello world!', mod_id)
    return true
  end,

  -- called every frame! https://love2d.org/wiki/love.update
  step = function(dt) end,

  -- called every frame! https://love2d.org/wiki/love.draw
  -- all love.graphics.* and tn.draw* methods available
  -- type is either 'obj' or 'ui' for layer to draw on 
  -- if you create your own tn.class.objs they will draw themselves automatically
  -- this is more for global drawing stuff, like say a new GUI element
  draw = function(type, camera_x, camera_y) 
    -- draw some text at the player position
    if type == 'obj' then
      tn.draw.text('Hello World!', math.floor(game.g.player.x - camera_x), math.floor(game.g.player.y - camera_y))
    end
  end,

  -- called every 0.1s!
  tick = function() end,

  -- called every 1s!
  tock = function() end,

  -- called on mouse use, type is 'pressed' or 'released'
  -- btn is 1 for left-click, 2 for right-click, 3 for middle-click
  -- phase is 'before' for before game click code, and 'after' for when all game click code is run
  mouse = function(type, btn, phase) end,

  -- called on keypress https://love2d.org/wiki/love.keypressed
  key = function(key, scancode, is_repeat) end,

  -- called on mouse wheel move, px and py are the scroll amount/direction
  -- inv is whether the scroll is inversed, i.e. player is on MacOS
  scroll = function(px, py, inv) end,

  -- called as player enters text https://love2d.org/wiki/love.textinput
  textinput = function(text) end,

  -- called on gamepad button press, type is 'pressed' or 'released'
  -- btn is the btn key being pressed, i.e. 'x'
  gamepad = function(type, btn) end,

  -- called when the world is changed between 'awake' and 'dream'
  world = function(world) end,

  -- called when the player saves their game, or autosave kicks in
  save = function() end,

  -- called when the game is quitting
  quit = function() end,

}
