// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tetramind/pixel.dart';

import 'piece.dart';
import 'values.dart';

List<List<Tetromino?>> board =
    List.generate(columnLength, (i) => List.generate(rowLength, (j) => null));

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  int rowLength = 10;
  int columnLength = 15;
  Piece currentPiece = Piece(type: Tetromino.L);
  int currentScore = 0;
  bool gameOver = false;
  @override
  void initState() {
    super.initState();
    startGame();
  }

  void startGame() {
    currentPiece.initializePiece();

    Duration frameRate = const Duration(milliseconds: 800);
    gameLoop(frameRate);
  }

  void gameLoop(Duration frameRate) {
    Timer.periodic(frameRate, (timer) {
      setState(() {
        clearLines();
        checkLanding();
        if (gameOver == true) {
          timer.cancel();
          showGameOverDialog();
        }
        currentPiece.movePiece(Direction.down);
      });
    });
  }

  void showGameOverDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Game Over'),
              content: Text('Your Score is: $currentScore'),
              actions: [
                TextButton(
                    onPressed: () {
                      resetGame();
                      Navigator.pop(context);
                    },
                    child: Text('Play Again'))
              ],
            ));
  }

  void resetGame() {
    board = List.generate(
        columnLength, (i) => List.generate(rowLength, (j) => null));
    currentScore = 0;
    gameOver = false;
    createNewPiece();
    startGame();
  }

  bool checkCollision(Direction direction) {
    for (int i = 0; i < currentPiece.position.length; i++) {
      int row = (currentPiece.position[i] / rowLength).floor();
      int column = currentPiece.position[i] % rowLength;

      if (direction == Direction.left) {
        column -= 1;
      } else if (direction == Direction.right) {
        column += 1;
      } else if (direction == Direction.down) {
        row += 1;
      }

      if (row >= columnLength || column >= rowLength || column < 0) {
        return true;
      }
      if (row >= 0 && board[row][column] != null) {
        return true;
      }
    }
    return false;
  }

  void checkLanding() {
    if (checkCollision(Direction.down)) {
      for (int i = 0; i < currentPiece.position.length; i++) {
        int row = (currentPiece.position[i] / rowLength).floor();
        int column = currentPiece.position[i] % rowLength;
        if (row >= 0 && column >= 0) {
          board[row][column] = currentPiece.type;
        }
      }

      createNewPiece();
    }
  }

  void createNewPiece() {
    Random random = Random();
    Tetromino type = Tetromino.values[random.nextInt(Tetromino.values.length)];
    currentPiece = Piece(type: type);
    currentPiece.initializePiece();
    if (isGameOver()) {
      gameOver = true;
    }
  }

  void moveleft() {
    if (!checkCollision(Direction.left)) {
      setState(() {
        currentPiece.movePiece(Direction.left);
      });
    }
  }

  void moveRight() {
    if (!checkCollision(Direction.right)) {
      setState(() {
        currentPiece.movePiece(Direction.right);
      });
    }
  }

  void rotatePiece() {
    setState(() {
      currentPiece.rotatePiece();
    });
  }

  void clearLines() {
    for (int i = columnLength - 1; i >= 0; i--) {
      bool isLineFull = true;
      for (int j = 0; j < rowLength; j++) {
        if (board[i][j] == null) {
          isLineFull = false;
          break;
        }
      }
      if (isLineFull) {
        for (int k = i; k > 0; k--) {
          board[k] = List.from(board[k - 1]);
        }
        board[0] = List.generate(rowLength, (j) => null);
        currentScore++;
      }
    }
  }

  bool isGameOver() {
    for (int i = 0; i < rowLength; i++) {
      if (board[0][i] != null) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
                itemCount: rowLength * columnLength,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: rowLength),
                itemBuilder: (context, index) {
                  int row = (index / rowLength).floor();
                  int column = index % rowLength;
                  if (currentPiece.position.contains(index)) {
                    return Pixel(
                      color: currentPiece.color,
                    );
                  } else if (board[row][column] != null) {
                    final Tetromino? tetrominoType = board[row][column];
                    return Pixel(
                      color: tetrominoColors[tetrominoType]!,
                    );
                  } else {
                    return Pixel(
                      color: Colors.grey[900],
                    );
                  }
                }),
          ),
          Text('Score: $currentScore',
              style: TextStyle(color: Colors.white, fontSize: 30)),
          Padding(
            padding: const EdgeInsets.only(bottom: 50, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: moveleft,
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  iconSize: 50,
                ),
                IconButton(
                  onPressed: rotatePiece,
                  icon: Icon(Icons.rotate_right),
                  color: Colors.white,
                  iconSize: 50,
                ),
                IconButton(
                  onPressed: moveRight,
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Colors.white,
                  iconSize: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
