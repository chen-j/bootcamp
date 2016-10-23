# Chess Validator
[Ironhack](http://ironhack.com) Week One Friday Challenge - October 2016

A ruby script that runs in the terminal for checking validity of chess moves.

The starting point and finishing point of a given piece are passed as arguments in the `app.rb` file after adding said piece to the board.

Ex: Add Black King to board and check to see if moving the Black King piece to new location is valid or not valid

`black_king = King.new(5, 8, "black")`

`board.place_piece(black_king)`

Check if Black King can move to `5,7`

`puts board.chess_board[5][8]`

`ILLEGAL` is returned for illegal moves and `LEGAL` is returned for legal moves.
