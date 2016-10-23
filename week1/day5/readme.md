## Chess Validator

[Ironhack](http://ironhack.com) Week One Friday Challenge - October 2016

A ruby script that runs in the terminal for checking validity of chess moves.

The starting point and finishing point of a given piece are passed as arguments in the `app.rb` file after adding said piece to the board.

Eg: Add Black King to board and check to see if moving the Black King piece to new location is valid or not valid

`black_king = King.new(5, 8, "black")`

`board.place_piece(black_king)`

Check if Black King can move to `5,7`

`puts board.can_move?(5, 8, 5, 7)`

`ILLEGAL` is returned for illegal moves and `LEGAL` is returned for legal moves.

### Assumptions

- The pieces are on a board with no destructions from other pieces
- Chess board is an 8x8 with labelled 1-8 on the y axis and 1-8 instead of the usual a-h on the x-axis.
- You're not actually playing a game of chess when you run and edit the chess validator but simply checking if a proposed move is valid or not from a given start position .
