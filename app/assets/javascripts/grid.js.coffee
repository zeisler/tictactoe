@Grid = class Grid
  constructor: (@size) -> # 9
    @width = Math.floor(Math.sqrt @size) # 3
    @build()
  build: ->
    @grid = []
    that = this
    for row in [0...@width]
      @grid[row] = []
      for column in [0...@width]
        @grid[row][column] = new Cell(row, column)


