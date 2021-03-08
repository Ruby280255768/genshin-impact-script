class RecorderX

  isActive: false
  list: []
  listIgnore: []
  ts: 0

  constructor: ->

    client.on 'leave', @stop

    $.on 'ctrl + r', =>

      $.beep()

      unless @isActive
        @ignore 'ctrl + r'
        @start()
      else
        @stop()
        ClipBoard = @save()

  ignore: (key) ->

    unless key
      @listIgnore = []
      return

    if $.includes @listIgnore, key
      return
    @listIgnore.Push key

  record: (key) ->

    unless @isActive
      return

    if $.includes @listIgnore, key
      return

    hud.render 5, key

    [x, y] = $.getPosition()

    now = $.now()
    delay = now - @ts
    @ts = now

    @list.Push {delay, key, x, y}

  save: ->

    result = ''

    for item in @list
      result = "#{result}-\n"
      for key, value of item
        result = "#{result}  #{key}: #{value}\n"

    return result

  start: ->

    if @isActive
      return

    @isActive = true
    @list = []
    @ts = $.now()

    hud.render 5, 'start recording'

  stop: ->

    unless @isActive
      return
    @isActive = false

    hud.render 5, 'stop recording'

# execute
recorder = new RecorderX()